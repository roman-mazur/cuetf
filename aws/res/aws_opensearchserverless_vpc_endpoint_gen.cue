package res

#aws_opensearchserverless_vpc_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearchserverless_vpc_endpoint")
	close({
		timeouts?: #timeouts
		id?:       string
		name!:     string
		region?:   string
		security_group_ids?: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
