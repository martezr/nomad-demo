source "git_repository" "nomad-demo" {
  url      = "https://github.com/martezr/nomad-demo.git"
  interval = "15m"
  ref {
    branch = "main"
  }
}

app "nomad_job" "infrastructure" {
  name     = "infrastructure"
  interval = "15m"
  path     = "/infrastructure"
  source   = source.git_repository.nomad-demo
}
