resource "aws_iam_role_policy" "s3_full_access_policy" {
    name = "redshift_s3_policy"
    role = aws_iam_role.redshift_role.id
    policy = jsonencode({
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "s3:*",
                "Resource": "*"
            }
        ]
    })
}


resource "aws_iam_role" "redshift_role" {
    name = "redshift_role"
    assume_role_policy = jsonencode(
    {
        "Version": "2012-10-17",
        "Statement": [
            {
            "Action": "sts:AssumeRole",
            "Principal": {
                "Service": "redshift.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
            }
        ]
    })
    tags = {
        tag-key = "redshift-role"
    }
}