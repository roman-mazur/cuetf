package res

#aws_opensearch_inbound_connection_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_opensearch_inbound_connection_accepter")
	close({
		timeouts?:          #timeouts
		connection_id!:     string
		connection_status?: string
		id?:                string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
