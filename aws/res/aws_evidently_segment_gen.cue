package res

#aws_evidently_segment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_evidently_segment")
	close({
		arn?:               string
		created_time?:      string
		description?:       string
		experiment_count?:  number
		id?:                string
		last_updated_time?: string
		launch_count?:      number
		name!:              string
		pattern!:           string
		region?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
