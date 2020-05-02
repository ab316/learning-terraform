provider "docker" {
  version = "2.6.0"
}

# Download the Image
resource "docker_image" "image_id" {
  name = var.image_name
}
