# Creating a Snapshoot of EC2 Instance and Volume and Downloading 

## Using terraform

```
# Declare the provider for AWS
provider "aws" {
  region = "us-east-1"
}

# Declare the data source for the EC2 instance
data "aws_instance" "example" {
  instance_id = "i-1234567890abcdef"
}

# Declare the data source for the attached volumes
data "aws_volume_attachment" "example" {
  instance_id = data.aws_instance.example.id
}

# Create a snapshot resource for each attached volume
resource "aws_ebs_snapshot" "example" {
  count = length(data.aws_volume_attachment.example.*.volume_id)
  volume_id = data.aws_volume_attachment.example.*.volume_id[count.index]
  tags = {
    Name = "Snapshot of volume ${data.aws_volume_attachment.example.*.volume_id[count.index]}"
  }
}

# Create a snapshot resource for the root volume of the EC2 instance
resource "aws_ebs_snapshot" "root" {
  volume_id = data.aws_instance.example.root_block_device.volume_id
  tags = {
    Name = "Snapshot of root volume ${data.aws_instance.example.root_block_device.volume_id}"
  }
}

# Create an output to show the snapshot IDs
output "snapshot_ids" {
  value = concat(aws_ebs_snapshot.example.*.id, aws_ebs_snapshot.root.id)
}

```

## Using Command Line 
```
aws ec2 create-snapshot --snapshot-id snap-01234567890abcdef --region us-east-1 --query SnapshotId --output text | xargs -I {} aws ec2 describe-snapshots --snapshot-ids {} --region us-east-1 --query Snapshots[0].VolumeId --output text | xargs -I {} aws ec2 describe-volumes --volume-ids {} --region us-east-1 --query Volumes[0].Tags[?Key==`Name`].Value --output text | xargs -I {} aws s3 cp s3://my-bucket/{}.raw .
```
