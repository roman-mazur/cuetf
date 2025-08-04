package res

#aws_kinesisanalyticsv2_application_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kinesisanalyticsv2_application_snapshot")
	close({
		timeouts?:                    #timeouts
		application_name!:            string
		application_version_id?:      number
		id?:                          string
		region?:                      string
		snapshot_creation_timestamp?: string
		snapshot_name!:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
