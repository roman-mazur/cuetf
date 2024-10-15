package res

#aws_opensearch_package_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_package_association")
	domain_name!:    string
	id?:             string
	package_id!:     string
	reference_path?: string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
