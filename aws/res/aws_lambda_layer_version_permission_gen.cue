package res

#aws_lambda_layer_version_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_lambda_layer_version_permission")
	action:           string
	id?:              string
	layer_name:       string
	organization_id?: string
	policy?:          string
	principal:        string
	revision_id?:     string
	skip_destroy?:    bool
	statement_id:     string
	version_number:   number
}
