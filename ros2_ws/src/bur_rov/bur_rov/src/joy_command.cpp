#include "joy_command.hpp"

JoyCommand::JoyCommand() : rclcpp::Node("joy_command")
{
    this->declare_parameter("cmd_pub_topic", "command");
    this->declare_parameter("joy_topic", "joy");
    this->declare_parameter("pose_topic", "pose");
    this->declare_parameter("imu_topic", "imu");
    this->declare_parameter("velocity", 0.5);
    const std::map<std::string, int> &axis_mapping = {{"linear_x", 1}, {"linear_y", 0}, {"linear_z", 2}, {"angular_x", 3}, {"angular_y", 4}, {"angular_z", 5}};
    this->declare_parameters("axis_mapping", axis_mapping);
    cmd_pub = this->create_publisher<bur_rov_msgs::msg::Command>(this->get_parameter("cmd_pub_topic").as_string(), 10);
    joy_sub = this->create_subscription<sensor_msgs::msg::Joy>(this->get_parameter("joy_topic").as_string(), 10,
                                                               bind(&JoyCommand::joy_callback, this, placeholders::_1));
    pose_sub = this->create_subscription<geometry_msgs::msg::Pose>(this->get_parameter("pose_topic").as_string(), 10,
                                                                   bind(&JoyCommand::pose_callback, this, placeholders::_1));
    imu_sub = this->create_subscription<sensor_msgs::msg::Imu>(this->get_parameter("imu_topic").as_string(), 10,
                                                               bind(&JoyCommand::imu_callback, this, placeholders::_1));
    vel = this->get_parameter("velocity").as_double();
    this->get_parameters("axis_mapping", axis_mapping_);
}

void JoyCommand::joy_callback(const sensor_msgs::msg::Joy::SharedPtr msg)
{
    if (!msg->axes.empty())
    {
        this->output.target_vel.linear.x = vel * msg->axes[axis_mapping_.at("linear_x")];
        this->output.target_vel.linear.y = vel * msg->axes[axis_mapping_.at("linear_y")];
        this->output.target_vel.linear.z = vel*msg->axes[axis_mapping_.at("linear_z")];
        this->output.target_vel.angular.x = vel*msg->buttons[axis_mapping_.at("angular_x")];
        this->output.target_vel.angular.y = vel * msg->axes[axis_mapping_.at("angular_y")];
        this->output.target_vel.angular.z = vel * msg->axes[axis_mapping_.at("angular_z")];
        this->output.target_pos = this->pose;
        this->output.buttons.clear();
        for (uint8_t i = 0; i < msg->buttons.size(); i++)
        {
            this->output.buttons.push_back(msg->buttons[i]);
        }
        cmd_pub->publish(output);
    }
}

void JoyCommand::pose_callback(const geometry_msgs::msg::Pose::SharedPtr msg)
{
    this->output.current_pos.position.z = msg->position.z;
    cmd_pub->publish(output);
}

void JoyCommand::imu_callback(const sensor_msgs::msg::Imu::SharedPtr msg)
{
    this->output.current_pos.orientation.x = msg->orientation.x;
    this->output.current_pos.orientation.y = msg->orientation.y;
    this->output.current_pos.orientation.z = msg->orientation.z;
    this->output.current_pos.orientation.w = msg->orientation.w;
    this->output.current_vel.angular.x = msg->angular_velocity.x;
    this->output.current_vel.angular.y = msg->angular_velocity.y;
    this->output.current_vel.angular.z = msg->angular_velocity.z;
    cmd_pub->publish(output);
}

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<JoyCommand>());
    rclcpp::shutdown();
    return 0;
}