provider "aws" {
  region     = "us-east-1"
  access_key = "AKIATCVA7AIJVKL3UTW2"
  secret_key = "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"
}

module "sns_topic" {
  source  = "terraform-aws-modules/sns/aws"
  version = "~> 3.0"
  name  = var.sns_topic_name
}

resource "aws_sns_topic_subscription" "endpoint1" {
  topic_arn = module.sns_topic.sns_topic_arn
  protocol  = var.sns_subsciption_protocol
  endpoint  = var.sns_subsciption_endpoint_1
  
}

resource "aws_sns_topic_subscription" "endpoint2" {
  topic_arn = module.sns_topic.sns_topic_arn
  protocol  = var.sns_subsciption_protocol
  endpoint  = var.sns_subsciption_endpoint_2
  
}

module "metric_alarm" {
  source  = "terraform-aws-modules/cloudwatch/aws//modules/metric-alarm"
  version = "~> 2.0"

  alarm_name          = var.alarm_name
  alarm_description   = var.alarm_description
  comparison_operator = var.comparison_operator
  datapoints_to_alarm = var.datapoints_to_alarm
  evaluation_periods  = var.evaluation_periods
  threshold           = var.threshold
  period              = var.period
  unit                = var.unit
 

  namespace   = var.namespace
  metric_name = var.metric_name
  statistic   = var.statistic
  dimensions = {
    FunctionName = var.FunctionName
  }

  alarm_actions = [module.sns_topic.sns_topic_arn]
  
}
