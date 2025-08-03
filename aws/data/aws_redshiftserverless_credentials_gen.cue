package data

#aws_redshiftserverless_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshiftserverless_credentials")
	close({
		db_name?:          string
		db_password?:      string
		db_user?:          string
		duration_seconds?: number
		expiration?:       string
		id?:               string
		region?:           string
		workgroup_name!:   string
	})
}
