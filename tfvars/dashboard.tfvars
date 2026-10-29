dashboard = {
  name = "infra dashboard"

  #   tags = [
  #   "owner:vanshika.rani_cloudeq",
  #   "env:sap",
  #   "service:QBRIDGEAI",
  #   "AssignmentGroup:frontendteam",
  #   # "PolicyName:Frontend",
  #   "team:test"
  # ]


  query = "avg:system.cpu.user{*}"

  widget = [
    {
      title      = "CPU Usage"
      type       = "query_value"
      aggregator = "avg"
      query      = "avg:system.cpu.user{*}"
    },
    {
      title      = "Memory Usage"
      type       = "query_value"
      aggregator = "avg"
      query      = "100 - (avg:system.mem.pct_usable{*} * 100)"
    },
    {
      title      = "disk Usage"
      type       = "query_value"
      aggregator = "avg"
      query      = "avg:system.disk.in_use{*} * 100"
    },
    {
      title      = "total host count"
      type       = "query_value"
      aggregator = "sum"
      query      = "count:system.cpu.user{*}"
    },
    {
      title      = "avg CPU trend over time"
      type       = "timeseries"
      aggregator = "avg"
      query      = "avg:system.cpu.user{*}"
    },
    {
      title      = "Top cpu hosts"
      type       = "toplist"
      aggregator = "avg"
      query      = "avg:system.cpu.user{*} by {host}"
    },
    { #RUM 
      title      = "Total User Sessions"
      type       = "query_value"
      aggregator = "sum"
      query      = "count:rum.sessions{*}"
    },
    {
      title      = "Average Page Load Time"
      type       = "query_value"
      aggregator = "avg"
      query      = "avg:rum.browser.page_load.time{*}"
    },

    #APM 
    {
      title      = " total Request Rate"
      type       = "query_value"
      aggregator = "sum"
      query      = "count:trace.http.request.hits{*}"
    },
    {
      title      = "Average Latency"
      type       = "query_value"
      aggregator = "avg"
      query      = "avg:trace.http.request.duration{*}"
    },
    {
      title      = "Error Count"
      type       = "query_value"
      aggregator = "sum"
      query      = "count:trace.http.request.errors{*}"
    },
  ]

  conditional_formats = [
    {
      comparator = "<"
      value      = "40"
      palette    = "white_on_green"
    },
    {
      comparator = ">"
      value      = "55"
      palette    = "white_on_yellow"
    },
    {
      comparator = ">"
      value      = "80"
      palette    = "white_on_red"
    },

  ]
  custom_unit = "%"
}