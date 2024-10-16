package res

#aws_pinpoint_gcm_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_gcm_channel")
	api_key?:                       string
	application_id!:                string
	default_authentication_method?: string
	enabled?:                       bool
	id?:                            string
	service_json?:                  string
}
