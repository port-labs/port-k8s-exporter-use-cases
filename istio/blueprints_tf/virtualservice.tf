resource "port-labs_blueprint" "virtualServices" {
  title      = "Virtual Services"
  icon       = "Istio"
  identifier = "virtualServices"
  properties {
    identifier = "hosts"
    type = "array"
  }
  properties {
    identifier = "match"
    type = "array"
  }
  properties {
    identifier = "labels"
    type = "object"
  }
  relations {
    identifier = "gateways"
    required   = true
    many       = false
  }
  relations {
    identifier = "Services"
    required   = false
    many       = true
  }
}