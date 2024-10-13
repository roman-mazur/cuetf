package res

#aws_s3control_access_grants_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3control_access_grants_instance")
	access_grants_instance_arn?:      string
	access_grants_instance_id?:       string
	account_id?:                      string
	id?:                              string
	identity_center_application_arn?: string
	identity_center_arn?:             string
	tags?: [string]: string
	tags_all?: [string]: string
}
