output cluster_identifier {
  value       = "${aws_redshift_cluster.redshift_cluster.cluster_identifier}"
  description = "Redshift cluster Identifier"
  depends_on  = []
}

output "redhsift_id"{
    value = "${aws_redshift_cluster.redshift_cluster.id}"
}


output "database_name" {
  value       = "${aws_redshift_cluster.redshift_cluster.database_name}"
  sensitive   = true
  description = "Redshift Database Name"
  depends_on  = []
}