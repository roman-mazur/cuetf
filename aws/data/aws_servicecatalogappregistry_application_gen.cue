package data

#aws_servicecatalogappregistry_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalogappregistry_application")
	close({
		application_tag?: [string]: string
		arn?:         string
		description?: string
		id!:          string
		name?:        string
		region?:      string
		tags?: [string]: string
	})
}
