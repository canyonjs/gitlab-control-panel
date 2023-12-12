locals {
    group_path_raw = substr(var.group_path, 3, -1)
    # HOTFIX CONCAT A ROOT so we can test on SaaS
    group_path_list = concat(["root5462149"], split("/", local.group_path_raw))
    
    group_parent_path_list = slice(local.group_path_list, 0, length(local.group_path_list) - 1)
    group_parent_path_string = join("/", local.group_parent_path_list)

    group_name = lower(reverse(local.group_path_list)[0])
    group_path = local.group_name

    is_not_root_group = length(local.group_path_list) > 1 ? 1 : 0 

    group_description = local.group_parent_path_string
    
    group_parent_id = try(data.gitlab_group.parent[0].id, null)
}
