package res

#aws_s3control_object_lambda_access_point_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_object_lambda_access_point_policy")
	close({
		account_id?:               string
		has_public_access_policy?: bool
		id?:                       string
		name!:                     string
		policy!:                   string
		region?:                   string
	})
}
