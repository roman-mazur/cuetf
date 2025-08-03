package res

#aws_devicefarm_device_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_device_pool")
	close({
		arn?: string
		rule?: matchN(1, [#rule, [_, ...] & [...#rule]])
		description?: string
		id?:          string
		max_devices?: number
		name!:        string
		project_arn!: string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#rule: close({
		attribute?: string
		operator?:  string
		value?:     string
	})
}
