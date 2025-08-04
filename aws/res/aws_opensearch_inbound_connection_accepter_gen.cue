package res

#aws_opensearch_inbound_connection_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_opensearch_inbound_connection_accepter")
	close({
		timeouts?:          #timeouts
		connection_id!:     string
		connection_status?: string
		id?:                string
		region?:            string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
