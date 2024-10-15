package res

#aws_media_store_container_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_media_store_container_policy")
	container_name!: string
	id?:             string
	policy!:         string
}
