variable "monitors" {
  type = map(object({
    monitor_name       = string
    monitor_type       = string
    monitor_query      = string
    message            = string
    draft_status       = string
    critical_threshold = number
  }))

}
variable "tags" {
  type = list(string)
}