package res

#aws_location_tracker_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_tracker_association")
	consumer_arn: string
	id?:          string
	tracker_name: string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
