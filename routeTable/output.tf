output "route_id" {
    description = "route table ID"
    value = "${aws_route_table.route_table.id}"
}