data "gitlab_group" "parent" {
    count = local.is_not_root_group
    full_path = local.group_parent_path_string
}