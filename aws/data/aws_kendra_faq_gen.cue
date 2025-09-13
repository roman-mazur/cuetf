package data

#aws_kendra_faq: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kendra_faq")
	close({
		arn?:           string
		created_at?:    string
		description?:   string
		error_message?: string
		faq_id!:        string
		file_format?:   string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		index_id!:      string
		language_code?: string
		name?:          string
		role_arn?:      string
		s3_path?: [...close({
			bucket?: string
			key?:    string
		})]
		status?: string
		tags?: [string]: string
		updated_at?: string
	})
}
