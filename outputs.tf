output "db_database_v1s_id" {
  description = "Map of id values across all db_database_v1s, keyed the same as var.db_database_v1s"
  value       = { for k, v in openstack_db_database_v1.db_database_v1s : k => v.id }
}
output "db_database_v1s_instance_id" {
  description = "Map of instance_id values across all db_database_v1s, keyed the same as var.db_database_v1s"
  value       = { for k, v in openstack_db_database_v1.db_database_v1s : k => v.instance_id }
}
output "db_database_v1s_name" {
  description = "Map of name values across all db_database_v1s, keyed the same as var.db_database_v1s"
  value       = { for k, v in openstack_db_database_v1.db_database_v1s : k => v.name }
}
output "db_database_v1s_region" {
  description = "Map of region values across all db_database_v1s, keyed the same as var.db_database_v1s"
  value       = { for k, v in openstack_db_database_v1.db_database_v1s : k => v.region }
}

