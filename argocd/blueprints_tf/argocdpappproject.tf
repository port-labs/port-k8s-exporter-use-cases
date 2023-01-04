resource "port-labs_blueprint" "argocdProject" {
  title       = "ArgoCD Project"
  icon        = "Cluster"
  identifier  = "argocdProject"
  description = "This blueprint ArgoCD Project"
  properties {
    identifier = "name"
    type       = "string"
    required   = false
  }
}