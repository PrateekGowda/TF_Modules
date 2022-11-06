data "template_file" "user_data" {
  template = "${file("scripts/jenkins.sh")}"
}

resource "aws_instance" "jenkins" {
  instance_type = "${var.instance_type}"
  security_groups = ["${aws_security_group.sg_jenkins.name}"]
  ami = "${var.amis}"
  subnet_id = "${var.subnet_public_id}"

  tags = {
    "Name" = "${var.jenkins_name}"
    "Environment" = "${var.environment_tag}"
  }

}