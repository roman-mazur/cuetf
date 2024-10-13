package data

#aws_servicecatalog_constraint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_constraint")
	accept_language?: string
	description?:     string
	id!:              string
	owner?:           string
	parameters?:      string
	portfolio_id?:    string
	product_id?:      string
	status?:          string
	type?:            string
	timeouts?:        #timeouts

	#timeouts: read?: string
}
