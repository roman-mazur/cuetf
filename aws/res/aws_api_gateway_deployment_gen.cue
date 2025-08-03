package res

#aws_api_gateway_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_deployment")
	close({
		created_date?: string
		description?:  string
		id?:           string
		region?:       string
		rest_api_id!:  string
		triggers?: [string]:  string
		variables?: [string]: string
	})
}
