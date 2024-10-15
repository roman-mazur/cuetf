package data

#aws_servicequotas_templates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicequotas_templates")
	id?:     string
	region!: string
	templates?: #templates | [...#templates]

	#templates: {
		global_quota?: bool
		quota_code?:   string
		quota_name?:   string
		region?:       string
		service_code?: string
		service_name?: string
		unit?:         string
		value?:        number
	}
}
