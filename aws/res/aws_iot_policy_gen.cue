package res

#aws_iot_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_policy")
	close({
		timeouts?:           #timeouts
		arn?:                string
		default_version_id?: string
		id?:                 string
		name!:               string
		policy!:             string
		region?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		delete?: string
		update?: string
	})
}
