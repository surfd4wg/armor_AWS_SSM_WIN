resource "aws_resourcegroups_group" "SSMManaged_WIN_2ndWatch" {
  name = "SSMManaged_WIN_2ndWatch"

  resource_query {
    query = <<JSON
{
  "ResourceTypeFilters": [
    "AWS::EC2::Instance"
  ],
  "TagFilters": [
    {
      "Key": "SSM",
      "Values": ["YES"]
    }
  ]
}
JSON
  }
}
