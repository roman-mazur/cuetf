package data

#aws_kendra_experience: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_experience")
	close({
		arn?: string
		configuration?: [...close({
			content_source_configuration?: [...close({
				data_source_ids?: [...string]
				direct_put_content?: bool
				faq_ids?: [...string]
			})]
			user_identity_configuration?: [...close({
				identity_attribute_name?: string
			})]
		})]
		created_at?:  string
		description?: string
		endpoints?: [...close({
			endpoint?:      string
			endpoint_type?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		error_message?: string
		experience_id!: string
		id?:            string
		index_id!:      string
		name?:          string
		role_arn?:      string
		status?:        string
		updated_at?:    string
	})
}
