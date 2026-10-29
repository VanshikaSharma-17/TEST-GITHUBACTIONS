# variable "dashboard_name" {
#     type=string
# }
# variable "tags" {
#   type = list(string)
# }
variable "dashboard" {
  type = object({
    name = string
    #   tags=list(string)
    query = string
    widget = list(object({
      title      = string
      type       = string
      aggregator = string
      query      = string
    }))
    conditional_formats = list(object({
      comparator = string
      value      = string
      palette    = string
    }))
  })
}

# variable "widget" {
#     type=list(object({
#     title = string
#     aggregrator=string
#     query=string
#     }))
# }
# variable "conditional_formats" {
#     type=list(object({
#     comparator =string
#     value      = string
#     palette= string
#     }))
# }


