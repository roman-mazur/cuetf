package res

#aws_appsync_api_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appsync_api_key")
	api_id!:      string
	api_key_id?:  string
	description?: string
	expires?:     string
	id?:          string
	key?:         string
}
