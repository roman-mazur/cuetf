package data

#aws_cloudwatch_log_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudwatch_log_group")
	close({
		arn?:                         string
		creation_time?:               number
		deletion_protection_enabled?: bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		id?:                string
		kms_key_id?:        string
		log_group_class?:   string
		name!:              string
		retention_in_days?: number
		tags?: [string]: string
	})
}
