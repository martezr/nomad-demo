repository "multi" {
  url      = "https://github.com/martezr/nomad-demo.git"
  interval = "30s"
  path     = "/apps"
  ref {
    branch = "main"
  }
}
