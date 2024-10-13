package data

#aws_servicecatalog_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_product")
	accept_language?:     string
	arn?:                 string
	created_time?:        string
	description?:         string
	distributor?:         string
	has_default_path?:    bool
	id!:                  string
	name?:                string
	owner?:               string
	status?:              string
	support_description?: string
	support_email?:       string
	support_url?:         string
	tags?: [string]: string
	type?:     string
	timeouts?: #timeouts

	#timeouts: read?: string
}
