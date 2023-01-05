resource "port-labs_blueprint" "argocdApp" {
  title      = "ArgoCD App"
  icon       = "Service"
  identifier = "argocdApp"
  properties {
    identifier = "status"
    type = "string"
  }
  properties {
    identifier = "syncStatus"
    type = "string"
  }
  properties {
    identifier = "gitRepo"
    type = "string"
    format = "url"
  }
  properties {
    identifier = "gitPath"
    type = "string"
  }
  properties {
    identifier = "gitRev"
    type = "string"
  }
  relations {
    identifier = "services"
    type       = "string"
    title      = "Services"
    required   = true
    many       = true
  }
  relations {
    identifier = "deployments"
    type       = "string"
    title      = "Deployments"
    required   = true
    many       = true
  }
  relations {
    identifier = "project"
    type       = "string"
    title      = "Project"
    required   = true
    many       = false
  }
}