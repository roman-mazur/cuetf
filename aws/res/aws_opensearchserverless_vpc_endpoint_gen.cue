package res

#aws_opensearchserverless_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearchserverless_vpc_endpoint")
	id?:  string
	name: string
	security_group_ids?: [...string]
	subnet_ids: [...string]
	vpc_id:    string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
