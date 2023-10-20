package data

#aws_ecr_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_authorization_token")
	authorization_token?: string
	expires_at?:          string
	id?:                  string
	password?:            string
	proxy_endpoint?:      string
	registry_id?:         string
	user_name?:           string
}
