package res

#aws_lakeformation_lf_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lakeformation_lf_tag")
	catalog_id?: string
	id?:         string
	key!:        string
	values!: [...string]
}
