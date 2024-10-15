package res

#aws_pinpoint_apns_voip_sandbox_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_apns_voip_sandbox_channel")
	application_id!:                string
	bundle_id?:                     string
	certificate?:                   string
	default_authentication_method?: string
	enabled?:                       bool
	id?:                            string
	private_key?:                   string
	team_id?:                       string
	token_key?:                     string
	token_key_id?:                  string
}
