package res

#aws_evidently_segment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_evidently_segment")
	arn?:               string
	created_time?:      string
	description?:       string
	experiment_count?:  number
	id?:                string
	last_updated_time?: string
	launch_count?:      number
	name!:              string
	pattern!:           string
	tags?: [string]:     string
	tags_all?: [string]: string
}
