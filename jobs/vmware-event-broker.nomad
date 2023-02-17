job "vmware-event-broker" {
  datacenters = ["chicago"]
  group "vmware-event-router" {
    network {
      port "tcp" {
        static = "8082"
      }
    }
    task "server" {
      driver = "docker"

      config {
        image = "us.gcr.io/daisy-284300/veba/router@sha256:e8c8b49ae7246dec8a5634a80f1c42a506bd2a32282a0c0443fa2e832f79a8ab"
        ports = ["tcp"]
        args = ["-config", "/etc/vmware-event-router/event-router-config.yaml", "-log-level", "info"]
      }
    }
  }
}

