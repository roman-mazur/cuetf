package res

#aws_kinesisanalyticsv2_application_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kinesisanalyticsv2_application_snapshot")
	application_name:             string
	application_version_id?:      number
	id?:                          string
	snapshot_creation_timestamp?: string
	snapshot_name:                string
	timeouts?:                    #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
