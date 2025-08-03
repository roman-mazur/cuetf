package res

#aws_opensearch_authorize_vpc_endpoint_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_authorize_vpc_endpoint_access")
	close({
		account!: string
		authorized_principal?: [...close({
			principal?:      string
			principal_type?: string
		})]
		domain_name!: string
		region?:      string
	})
}
