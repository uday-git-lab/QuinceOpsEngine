import boto3
import json
from botocore.exceptions import ClientError

def bucket_is_public(bucket_name, s3_client):
    try:
        # Check bucket ACL
        acl = s3_client.get_bucket_acl(Bucket=bucket_name)
        for grant in acl['Grants']:
            if 'AllUsers' in grant['Grantee']:
                return True

        # Check bucket policy
        try:
            policy = s3_client.get_bucket_policy(Bucket=bucket_name)
            policy_dict = json.loads(policy['Policy'])  # Convert JSON string to dictionary
            for statement in policy_dict['Statement']:
                if statement['Effect'] == 'Allow' and 'Principal' in statement:
                    if 'AWS' in statement['Principal'] or 'Service' in statement['Principal']:
                        continue
                    return True
        except ClientError as e:
            if e.response['Error']['Code'] != 'NoSuchBucketPolicy':
                print(f"Error checking bucket policy for {bucket_name}: {e}")

    except ClientError as e:
        print(f"Error checking bucket {bucket_name}: {e}")

    return False

def list_public_buckets():
    s3_client = boto3.client('s3')
    public_buckets = []

    try:
        buckets = s3_client.list_buckets()

        for bucket in buckets['Buckets']:
            if bucket_is_public(bucket['Name'], s3_client):
                public_buckets.append(bucket['Name'])

    except ClientError as e:
        print(f"Error listing buckets: {e}")

    return public_buckets

if __name__ == "__main__":
    public_buckets = list_public_buckets()
    if public_buckets:
        print("Public S3 Buckets:")
        for bucket in public_buckets:
            print(bucket)
    else:
        print("No public S3 buckets found.")


