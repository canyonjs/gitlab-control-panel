data "gitlab_group" "parent" {
    full_path = local.project_parent_path_string
}