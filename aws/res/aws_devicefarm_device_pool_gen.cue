package res

#aws_devicefarm_device_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_devicefarm_device_pool")
	arn?:         string
	description?: string
	id?:          string
	max_devices?: number
	name!:        string
	project_arn!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	type?: string
	rule?: #rule | [_, ...] & [...#rule]

	#rule: {
		attribute?: string
		operator?:  string
		value?:     string
	}
}
