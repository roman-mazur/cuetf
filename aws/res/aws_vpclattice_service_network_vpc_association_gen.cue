package res

#aws_vpclattice_service_network_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_service_network_vpc_association")
	arn?:        string
	created_by?: string
	id?:         string
	security_group_ids?: [...string]
	service_network_identifier!: string
	status?:                     string
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_identifier!: string
	timeouts?:       #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
