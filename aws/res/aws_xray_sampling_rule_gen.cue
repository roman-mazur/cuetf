package res

#aws_xray_sampling_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_xray_sampling_rule")
	arn?: string
	attributes?: [string]: string
	fixed_rate:     number
	host:           string
	http_method:    string
	id?:            string
	priority:       number
	reservoir_size: number
	resource_arn:   string
	rule_name?:     string
	service_name:   string
	service_type:   string
	tags?: [string]: string
	tags_all?: [string]: string
	url_path: string
	version:  number
}
