package res

#aws_pinpoint_adm_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_adm_channel")
	application_id: string
	client_id:      string
	client_secret:  string
	enabled?:       bool
	id?:            string
}
