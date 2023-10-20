package res

#aws_opensearch_inbound_connection_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opensearch_inbound_connection_accepter")
	connection_id:      string
	connection_status?: string
	id?:                string
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
