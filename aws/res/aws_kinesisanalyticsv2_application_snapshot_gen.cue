package res

#aws_kinesisanalyticsv2_application_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesisanalyticsv2_application_snapshot")
	close({
		application_name!:       string
		application_version_id?: number
		id?:                     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		snapshot_creation_timestamp?: string
		snapshot_name!:               string
		timeouts?:                    #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
