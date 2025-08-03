package res

#aws_s3control_access_grants_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_grants_location")
	close({
		access_grants_location_arn?: string
		access_grants_location_id?:  string
		account_id?:                 string
		iam_role_arn!:               string
		id?:                         string
		location_scope!:             string
		region?:                     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
