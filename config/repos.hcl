repository "infrastructure" {
  url      = "https://github.com/martezr/nomad-demo.git"
  interval = "15m"
  path     = "/infrastructure"
  ref {
    branch = "main"
  }
}

repository "apps" {
  url      = "https://github.com/martezr/nomad-demo.git"
  interval = "30s"
  path     = "/apps"
  ref {
    branch = "main"
  }
}
