package res

#aws_lightsail_bucket_resource_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lightsail_bucket_resource_access")
	bucket_name!:   string
	id?:            string
	resource_name!: string
}
