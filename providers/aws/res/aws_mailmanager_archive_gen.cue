package res

aws_mailmanager_archive: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mailmanager_archive")
	close({
		retention?: matchN(1, [#retention, [...#retention]])
		archive_state?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		arn?:                    string
		created_timestamp?:      string
		id?:                     string
		kms_key_arn?:            string
		last_updated_timestamp?: string
		name!:                   string
		retention_actual?: [...close({
			retention_period?: string
		})]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#retention: close({
		retention_period!: string
	})
}
