import json
import boto3

client = boto3.client('sns')

def lambda_handler(event, context):
    
    bucket_name = event["Records"][0]["s3"]["bucket"]["name"]
    object_name = event["Records"][0]["s3"]["object"]["key"]
    
    response = client.publish(
        TopicArn='arn:aws:sns:us-east-1:261867430439:s3-notification',
        Message=f"Bucket name: {bucket_name}, Object name: {object_name}",
        Subject='New object uploaded to S3',
        )