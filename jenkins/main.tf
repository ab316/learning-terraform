provider "docker" {
  # Version 2.7.0 has a bug: Docker containers are always shown as changed on every call to 'terraform plan'
  version = "2.6.0"
}

resource "docker_volume" "jenkins_volume" {
  name = "jenkins_data"
}

resource "docker_container" "jenkins_container" {
  name  = "jenkins"
  image = "jenkins:terraform"
  ports {
    internal = "8080"
    external = "8080"
  }

  volumes {
    volume_name    = docker_volume.jenkins_volume.name
    container_path = "/var/jenkins_home"
  }

  # Bind mount volume
  # To allow the container to talk to the Docker running on the host
  volumes {
    host_path      = "/var/run/docker.sock"
    container_path = "/var/run/docker.sock" 
  }
}
