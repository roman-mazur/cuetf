package data

#aws_servicequotas_templates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicequotas_templates")
	close({
		aws_region?: string
		id?:         string
		templates?: [...close({
			global_quota?: bool
			quota_code?:   string
			quota_name?:   string
			region?:       string
			service_code?: string
			service_name?: string
			unit?:         string
			value?:        number
		})]
	})
}
