package data

#aws_redshiftserverless_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshiftserverless_credentials")
	db_name?:          string
	db_password?:      string
	db_user?:          string
	duration_seconds?: number
	expiration?:       string
	id?:               string
	workgroup_name!:   string
}
