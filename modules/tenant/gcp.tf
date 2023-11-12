data "google_folder" "tier" {
  folder = "folders/${var.tier}"
}

resource "google_project" "tenant" {
  count = var.cloud_provider == "GCP" ? 1 : 0

  name       = var.tenant_id
  project_id = var.tenant_id
  folder_id  = data.google_folder.tier.name
  labels     = {
    Name       = var.var.tenant_id
    Owner      = var.owner
    Department = var.department
    Tier       = var.tier
  }
}
