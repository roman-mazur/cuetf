package res

#aws_servicequotas_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicequotas_template")
	global_quota?: bool
	id?:           string
	quota_code:    string
	quota_name?:   string
	region:        string
	service_code:  string
	service_name?: string
	unit?:         string
	value:         number
}
