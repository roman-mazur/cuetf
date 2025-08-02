package data

#aws_location_tracker_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_tracker_association")
	close({
		consumer_arn!: string
		id?:           string
		region?:       string
		tracker_name!: string
	})
}
