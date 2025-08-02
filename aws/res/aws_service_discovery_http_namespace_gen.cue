package res

#aws_service_discovery_http_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_service_discovery_http_namespace")
	close({
		arn?:         string
		description?: string
		http_name?:   string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
