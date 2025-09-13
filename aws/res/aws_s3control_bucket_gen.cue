package res

#aws_s3control_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_bucket")
	close({
		arn?:           string
		bucket!:        string
		creation_date?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		id?:                          string
		outpost_id!:                  string
		public_access_block_enabled?: bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
