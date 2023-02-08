job "backstage" {
  datacenters = ["chicago"]

  group "backstage" {
    network {
      port "postgresdb" {
        to = 5433
      }
    }

    task "postgresql" {
      driver = "docker"
      env {
        POSTGRES_PASSWORD = "example"
      }
      config {
        image = "postgres"
        ports = ["postgresdb"]
      }

      resources {
        cpu    = 500
        memory = 512
      }
    }
  }
}

