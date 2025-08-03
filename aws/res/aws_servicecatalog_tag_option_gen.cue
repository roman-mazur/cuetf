package res

#aws_servicecatalog_tag_option: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_tag_option")
	close({
		active?:   bool
		timeouts?: #timeouts
		id?:       string
		key!:      string
		owner?:    string
		region?:   string
		value!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
