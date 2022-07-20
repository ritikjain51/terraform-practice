resource "aws_redshift_cluster" "redshift_cluster" {
    cluster_identifier = "${var.cluster_identifier}"
    database_name      = "${var.database_name}"
    master_username    = "${var.master_uname}"
    master_password    = "${var.master_pass}"
    node_type          = "${var.nodetype}"
    cluster_type       = "${var.cluster_type}"
    cluster_subnet_group_name = "${var.cluster_subnet_group}"
    skip_final_snapshot = true
    iam_roles = "${var.iam_roles_arn}"
}