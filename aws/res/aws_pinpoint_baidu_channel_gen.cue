package res

#aws_pinpoint_baidu_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_pinpoint_baidu_channel")
	api_key:        string
	application_id: string
	enabled?:       bool
	id?:            string
	secret_key:     string
}
