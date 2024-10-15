package res

#aws_s3control_access_point_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_point_policy")
	access_point_arn!:         string
	has_public_access_policy?: bool
	id?:                       string
	policy!:                   string
}
