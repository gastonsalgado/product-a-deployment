variable "cloud_provider" {
    descripcion = "Cloud Provider (AWS or GCP)."
    type        = string
}

variable "department" {
    descripcion = "Department."
    type        = string
}

variable "tier" {
    descripcion = "Tier."
    type        = string
}

variable "tenant_id" {
    descripcion = "Tenant ID."
    type        = string
}

variable "owner" {
    descripcion = "Email address of the owner."
    type        = string
}
