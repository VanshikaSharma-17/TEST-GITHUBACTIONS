resource "datadog_monitor" "foo" {
  for_each = var.monitors
  name     = each.value.monitor_name
  type     = "metric alert"
  message  = each.value.message
  query    = each.value.monitor_query
  tags     = var.tags


  monitor_thresholds {}
  # tags = [
  #   "owner:vanshika.rani@cloudeq",
  #   "env:sap",
  #   "service:QBRIDGEAI",
  #   "AssignmentGroup:frontendteam",
  #   "PolicyName:Frontend"
  # ]
}