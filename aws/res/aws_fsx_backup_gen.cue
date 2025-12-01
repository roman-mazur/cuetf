package res

#aws_fsx_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_fsx_backup")
	close({
		arn?:            string
		file_system_id?: string
		id?:             string
		kms_key_id?:     string
		owner_id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		type?:      string
		volume_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
