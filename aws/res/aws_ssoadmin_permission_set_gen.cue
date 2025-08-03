package res

#aws_ssoadmin_permission_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_permission_set")
	close({
		arn?:              string
		timeouts?:         #timeouts
		created_date?:     string
		description?:      string
		id?:               string
		instance_arn!:     string
		name!:             string
		region?:           string
		relay_state?:      string
		session_duration?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		update?: string
	})
}
