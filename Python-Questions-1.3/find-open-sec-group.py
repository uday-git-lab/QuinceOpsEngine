import boto3
from botocore.exceptions import ClientError

def find_open_security_groups():
    ec2 = boto3.client('ec2')
    open_security_groups = set()  # Using a set to avoid duplicates

    try:
        security_groups = ec2.describe_security_groups()['SecurityGroups']

        for sg in security_groups:
            for permission in sg['IpPermissions']:
                for ip_range in permission.get('IpRanges', []):
                    if ip_range.get('CidrIp') == '0.0.0.0/0':
                        open_security_groups.add(sg['GroupId'])
                        break

                for ipv6_range in permission.get('Ipv6Ranges', []):
                    if ipv6_range.get('CidrIpv6') == '::/0':
                        open_security_groups.add(sg['GroupId'])
                        break

    except ClientError as e:
        print(f"An error occurred: {e}")

    return list(open_security_groups)  # Convert back to list for consistency

if __name__ == "__main__":
    open_sgs = find_open_security_groups()
    if open_sgs:
        print("Open Security Groups:")
        for sg in open_sgs:
            print(sg)
    else:
        print("No open security groups found.")

