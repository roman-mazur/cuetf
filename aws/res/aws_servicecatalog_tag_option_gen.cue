package res

#aws_servicecatalog_tag_option: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_tag_option")
	active?:   bool
	id?:       string
	key!:      string
	owner?:    string
	value!:    string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
