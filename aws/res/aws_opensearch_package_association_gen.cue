package res

#aws_opensearch_package_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_package_association")
	close({
		domain_name!:    string
		timeouts?:       #timeouts
		id?:             string
		package_id!:     string
		reference_path?: string
		region?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
