resource "openstack_db_database_v1" "db_database_v1s" {
  for_each = var.db_database_v1s

  instance_id = each.value.instance_id
  name        = each.value.name
  region      = each.value.region

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

