sns_topic_name = "new-topic"
sns_subsciption_protocol = "email"
sns_subsciption_endpoint_1 = "tankadlag@gmail.com"
sns_subsciption_endpoint_2 = "tanishq.k@axiomio.com"
alarm_name = "error-alarm"
alarm_description = "Triggered when error in lambda"
comparison_operator = "GreaterThanThreshold"
datapoints_to_alarm = 1
evaluation_periods = 2
threshold = 0
period = 60
unit = "Count"
namespace = "AWS/Lambda"
metric_name = "Errors"
statistic = "Minimum"
FunctionName = "MyFunction"