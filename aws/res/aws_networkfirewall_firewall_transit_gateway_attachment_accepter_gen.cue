package res

#aws_networkfirewall_firewall_transit_gateway_attachment_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkfirewall_firewall_transit_gateway_attachment_accepter")
	close({
		timeouts?:                      #timeouts
		region?:                        string
		transit_gateway_attachment_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
