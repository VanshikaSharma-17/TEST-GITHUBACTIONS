monitors = {
  cpu = {
    monitor_name       = "CPU Usage Alert 3"
    monitor_type       = "metric alert"
    monitor_query      = "avg(last_1h):avg:system.cpu.user{env:sap} by {host} > 80"
    message            = "CPU crossed 80%. Notify:@sharmavanshika8685@gmail.com"
    draft_status       = "draft"
    critical_threshold = 80
  }
  memory = {
    monitor_name = "Memory Usage Alert 3"

    monitor_type = "metric alert"

    monitor_query = "avg(last_1h):avg:system.mem.pct_usable{env:sap} < 10"

    critical_threshold = 10

    message      = "Memory usage above 60%. Notify:@sharmavanshika8685@gmail.com"
    draft_status = "draft"

  }
  disk = {
    monitor_name = "Disk Usage Alert 3"

    monitor_type = "metric alert"

    monitor_query = "avg(last_1h):avg:system.disk.in_use{env:sap} > 10"

    critical_threshold = 10

    message      = "Disk usage above 45%. Notify:@sharmavanshika8685@gmail.com"
    draft_status = "draft"

  }
}
tags = [
  "owner:vanshika.rani@cloudeq",
  "env:sap",
  "service:QBRIDGEAI",
  "AssignmentGroup:frontendteam",
  "PolicyName:Frontend"
]
