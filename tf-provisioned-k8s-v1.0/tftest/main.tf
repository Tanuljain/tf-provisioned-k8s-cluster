output "test" {
  value = var.msg
}

output "test_list" {
  # count = length(var.instance_name)
  # value = element(var.instance_name, count.index)
  value = var.list
}
