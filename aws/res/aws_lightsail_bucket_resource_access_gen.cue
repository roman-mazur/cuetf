package res

#aws_lightsail_bucket_resource_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lightsail_bucket_resource_access")
	close({
		bucket_name!:   string
		id?:            string
		region?:        string
		resource_name!: string
	})
}
