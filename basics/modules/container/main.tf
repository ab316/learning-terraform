provider "docker" {
  version = "2.6.0"
}

# Start the Container
resource "docker_container" "container_id" {
  name  = var.container_name
  image = var.image
  ports {
    internal = var.int_port
    external = var.ext_port
  }
}
