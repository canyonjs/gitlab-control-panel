locals {
    project_path_raw = substr(var.project_path, 3, -1)
    # HOTFIX CONCAT A ROOT so we can test on SaaS
    project_path_list = concat(["root5462149"], split("/", local.project_path_raw))
    project_parent_path_list = slice(local.project_path_list, 0, length(local.project_path_list) - 1)
    project_parent_path_string = join("/", local.project_parent_path_list)
    project_name = reverse(local.project_path_list)[0]
    project_path = local.project_name
    project_namespace_id = data.gitlab_group.parent.id
    project_description = local.project_parent_path_string
}