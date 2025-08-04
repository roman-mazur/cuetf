package res

#aws_organizations_policy_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_organizations_policy_attachment")
	close({
		id?:           string
		policy_id!:    string
		skip_destroy?: bool
		target_id!:    string
	})
}
