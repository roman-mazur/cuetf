package res

#aws_opensearch_domain_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_domain_policy")
	access_policies!: string
	domain_name!:     string
	id?:              string
	timeouts?:        #timeouts

	#timeouts: {
		delete?: string
		update?: string
	}
}
