package data

#aws_iam_role_policy_attachments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_iam_role_policy_attachments")
	close({
		attached_policies?: [...close({
			policy_arn?:  string
			policy_name?: string
		})]
		path_prefix?: string
		role_name!:   string
	})
}
