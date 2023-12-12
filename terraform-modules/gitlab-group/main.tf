resource "gitlab_group" "this" {
  name        = local.group_name
  path        = local.group_path
  description = local.group_description
  parent_id = local.group_parent_id
}