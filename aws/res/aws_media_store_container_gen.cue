package res

#aws_media_store_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_media_store_container")
	arn?:      string
	endpoint?: string
	id?:       string
	name:      string
	tags?: [string]: string
	tags_all?: [string]: string
}
