package res

#aws_cloudsearch_domain_service_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudsearch_domain_service_access_policy")
	access_policy!: string
	domain_name!:   string
	id?:            string
	timeouts?:      #timeouts

	#timeouts: {
		delete?: string
		update?: string
	}
}
