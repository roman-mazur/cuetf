package res

#aws_ec2_transit_gateway_peering_attachment_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ec2_transit_gateway_peering_attachment_accepter")
	id?:                      string
	peer_account_id?:         string
	peer_region?:             string
	peer_transit_gateway_id?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	transit_gateway_attachment_id!: string
	transit_gateway_id?:            string
}
