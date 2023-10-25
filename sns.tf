resource "aws_sns_topic" "s3-notification" {
    name = "sns-s3-notification"
    display_name = "sns-s3-notification"
    tags = {
        "Name" = "sns-topic-alerts"
    }
}

resource "aws_sns_topic_subscription" "sns-topic-subscription" {
    topic_arn = aws_sns_topic.snstopic.arn
    protocol = "email"
    endpoint = "laurenjforaws@gmail.com"

}

output "SNSArn" {
    description = "SNS alerting topics"
    value = aws_sns_topic.snstopic.arn
}