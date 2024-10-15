package res

#aws_s3control_access_grants_instance_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_grants_instance_resource_policy")
	account_id?: string
	id?:         string
	policy!:     string
}
