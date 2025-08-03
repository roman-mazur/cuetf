package res

#aws_media_store_container: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_media_store_container")
	close({
		arn?:      string
		endpoint?: string
		id?:       string
		name!:     string
		region?:   string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
