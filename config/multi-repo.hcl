app "nomad_job" "apps" {
  name     = "apps"
  interval = "15m"
  path     = "/apps"
  source   = source.git_repository.nomad-demo
}
