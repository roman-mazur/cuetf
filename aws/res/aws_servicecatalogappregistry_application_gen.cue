package res

#aws_servicecatalogappregistry_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalogappregistry_application")
	application_tag?: [string]: string
	arn?:         string
	description?: string
	id?:          string
	name!:        string
}
