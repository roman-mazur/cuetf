package data

#aws_transfer_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_server")
	arn?:                    string
	certificate?:            string
	domain?:                 string
	endpoint?:               string
	endpoint_type?:          string
	id?:                     string
	identity_provider_type?: string
	invocation_role?:        string
	logging_role?:           string
	protocols?: [...string]
	security_policy_name?: string
	server_id!:            string
	structured_log_destinations?: [...string]
	tags?: [string]: string
	url?: string
}
