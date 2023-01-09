resource "port-labs_blueprint" "gateways" {
  title      = "Istio Gateways"
  icon       = "Cloud"
  identifier = "gateways"
  properties {
    identifier = "name"
    type = "string"
  }
  properties {
    identifier = "ports"
    type = "array"
  }
  properties {
    identifier = "labels"
    type = "object"
  }
  properties {
    identifier = "selector"
    type = "object"
  }
  relations {
    identifier = "namespace"
    type       = "string"
    required   = true
    many       = false
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