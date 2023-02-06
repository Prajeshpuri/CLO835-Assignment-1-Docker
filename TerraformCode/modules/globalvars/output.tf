# Default tags
output "default_tags" {
  value = {
    "Owner" = "Prajesh"
    "App"   = "DockerECR"
    "Project" = "CLO835"
  }
}

# Prefix to identify resources
output "prefix" {
  value     = "assignment-1"
}