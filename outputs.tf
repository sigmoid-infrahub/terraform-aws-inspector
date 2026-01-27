output "inspector_enabler_id" {
  description = "Inspector enabler ID"
  value       = aws_inspector2_enabler.this.id
}

output "module" {
  description = "Full module outputs"
  value = {
    enabler_id = aws_inspector2_enabler.this.id
  }
}
