variable "sns_topic_name" {
  description = "Sns topic name"
  type        = string
}

variable "sns_subsciption_protocol" {
  description = "Sns subscription protocol"
  type        = string
}

variable "sns_subsciption_endpoint_1" {
  description = "sns subsciption endpoint"
  type        = string
}

variable "sns_subsciption_endpoint_2" {
  description = "sns subsciption endpoint"
  type        = string
}

variable "alarm_name" {
  description = "alarm name"
  type        = string
}

variable "alarm_description" {
  description = "alarm_description"
  type        = string
}

variable "comparison_operator" {
  description = "comparison operator"
  type        = string
}

variable "datapoints_to_alarm"{
    description = "datapoints to alarm "
    type = number
}

variable "evaluation_periods"{
    description = "evaluation periods"
    type = number
}

variable "threshold"{
    description = "threshold"
    type = number
}

variable "period"{
    description = "period"
    type = number
}

variable "unit"{
    description = "unit"
    type = string
}

variable "namespace"{
    description = "namespace"
    type = string
}

variable "metric_name"{
    description = "metric_name"
    type = string
}

variable "statistic"{
    description = "statistic"
    type = string
}

variable "FunctionName"{
    description = "Lambda Function Name"
    type = string
}


