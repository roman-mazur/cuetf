package res

#aws_servicecatalogappregistry_attribute_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalogappregistry_attribute_group_association")
	close({
		application_id!:     string
		attribute_group_id!: string
		region?:             string
	})
}
