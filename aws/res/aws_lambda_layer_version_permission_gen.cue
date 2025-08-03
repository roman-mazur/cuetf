package res

#aws_lambda_layer_version_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lambda_layer_version_permission")
	close({
		action!:          string
		id?:              string
		layer_name!:      string
		organization_id?: string
		policy?:          string
		principal!:       string
		region?:          string
		revision_id?:     string
		skip_destroy?:    bool
		statement_id!:    string
		version_number!:  number
	})
}
