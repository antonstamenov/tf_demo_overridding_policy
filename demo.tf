data "aws_iam_policy_document" "override" {
  source_json = file("plicies/original_policy.json")
  override_json = file("plicies/overriding_policy.json")
}

output "json_document" {
  value = data.aws_iam_policy_document.override.json
}
