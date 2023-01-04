resource "port-labs_blueprint" "argocdApp" {
  title      = "ArgoCD App"
  icon       = "Service"
  identifier = "argocdApp"
  properties {
    identifier = "services"
    type       = "string"
    title      = "Services"
    required   = true
    many       = true
  }
  properties {
    identifier = "deployments"
    type       = "string"
    title      = "Deployments"
    required   = true
    many       = true
  }
  properties {
    identifier = "project"
    type       = "string"
    title      = "Project"
    required   = true
    many       = false
  }
}