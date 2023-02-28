output "id" {
  value = azurerm_service_plan.service_plan.id
  description = "- The ID of the Servi_plance Plan."
}
output "kind" {
  value = azurerm_service_plan.service_plan.kind
  description = "- A string representi_planng the Kind of Service Plan."
}
output "reserved" {
  value = azurerm_service_plan.service_plan.reserved
  description = "- Whether this is a reserved Service Plan Type. `true` if `os_type` is `Linux`, otherwise `false`."
}
