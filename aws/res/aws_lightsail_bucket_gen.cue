package res

#aws_lightsail_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lightsail_bucket")
	close({
		arn?:               string
		availability_zone?: string
		bundle_id!:         string
		created_at?:        string
		force_delete?:      bool
		id?:                string
		name!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		support_code?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		url?: string
	})
}
