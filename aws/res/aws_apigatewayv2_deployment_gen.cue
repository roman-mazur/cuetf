package res

#aws_apigatewayv2_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_apigatewayv2_deployment")
	api_id:         string
	auto_deployed?: bool
	description?:   string
	id?:            string
	triggers?: [string]: string
}
