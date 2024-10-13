package data

#aws_location_tracker_associations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_tracker_associations")
	consumer_arns?: [...string]
	id?:           string
	tracker_name!: string
}
