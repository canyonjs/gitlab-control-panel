resource "gitlab_project" "this" {
  name        = local.project_name
  description = local.project_description
  path = local.project_name
  namespace_id = local.project_namespace_id
}