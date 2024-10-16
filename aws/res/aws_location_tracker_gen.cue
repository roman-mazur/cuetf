package res

#aws_location_tracker: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_tracker")
	create_time?:        string
	description?:        string
	id?:                 string
	kms_key_id?:         string
	position_filtering?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	tracker_arn?:  string
	tracker_name!: string
	update_time?:  string
}
