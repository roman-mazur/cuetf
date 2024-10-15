package res

#aws_servicecatalog_constraint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_constraint")
	accept_language?: string
	description?:     string
	id?:              string
	owner?:           string
	parameters!:      string
	portfolio_id!:    string
	product_id!:      string
	status?:          string
	type!:            string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
