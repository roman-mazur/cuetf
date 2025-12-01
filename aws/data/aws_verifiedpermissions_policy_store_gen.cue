package data

#aws_verifiedpermissions_policy_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_verifiedpermissions_policy_store")
	close({
		arn?:                 string
		created_date?:        string
		deletion_protection?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		description?:       string
		id!:                string
		last_updated_date?: string
		tags?: [string]: string
		validation_settings?: [...close({
			mode?: string
		})]
	})
}
