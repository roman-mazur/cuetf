package data

#aws_ecr_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_authorization_token")
	close({
		authorization_token?: string
		expires_at?:          string
		id?:                  string
		password?:            string
		proxy_endpoint?:      string
		region?:              string
		registry_id?:         string
		user_name?:           string
	})
}
