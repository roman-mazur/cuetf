package data

#aws_secretsmanager_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_secretsmanager_secret")
	close({
		arn?:          string
		created_date?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		description?:       string
		id?:                string
		kms_key_id?:        string
		last_changed_date?: string
		name?:              string
		policy?:            string
		tags?: [string]: string
	})
}
