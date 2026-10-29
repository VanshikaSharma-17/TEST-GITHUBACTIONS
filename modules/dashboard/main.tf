resource "datadog_dashboard" "ordered_dashboard" {
  title = var.dashboard.name
  # tags        = var.dashboard.tags
  layout_type = "ordered"
  #    layout_type = "free"
  dynamic "widget" {
    for_each = var.dashboard.widget
    content {
      query_table_definition {
        #  title = var.widget.title
        title = widget.value.title
        request {

          q          = widget.value.query
          aggregator = widget.value.aggregator


          dynamic "conditional_formats" {
            for_each = var.dashboard.conditional_formats
            content {
              comparator = conditional_formats.value.comparator
              value      = conditional_formats.value.value
              palette    = conditional_formats.value.palette
            }
          }
        }
      }
    }
  }
}


      