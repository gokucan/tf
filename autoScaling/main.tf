# resource "aws_launch_configuration" "worker" {
#   name_prefix = "worker-"

#   image_id                    = "${data.aws_ami.amazon_linux.id}"
#   instance_type               = "${var.worker_instance_type}"
#   security_groups             = ["${var.sec_group}"] # security group id to be attached
#   key_name = var.key_name

#   user_data = "${var.userData}" # script to run like webserver

#   lifecycle {
#     create_before_destroy = true
#   }
# }

resource "aws_launch_template" "worker" {
  name                   = var.instance_name
  image_id               = var.image_id
  instance_type          = var.worker_instance_type
  key_name               = var.key_name
  vpc_security_group_ids = ["${var.sec_group_ids}"]
  iam_instance_profile {
    name = var.instance_name
  }

  user_data = filebase64(var.userData)
}

resource "aws_autoscaling_group" "worker-asg" {
  name = "${aws_launch_template.worker.name}-asg"

  min_size             = var.mini_size
  desired_capacity     = var.desired_cap
  max_size             = var.maxi_size
  launch_template {
    id      = aws_launch_template.worker.id
  }
  vpc_zone_identifier  = var.subnet_list # add subnets to the suto scaling group

  # Required to redeploy without an outage.
  lifecycle {
    create_before_destroy = true
  }
}
