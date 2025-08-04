package res

#aws_vpclattice_service_network_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service_network_vpc_association")
	close({
		arn?:        string
		created_by?: string
		id?:         string
		region?:     string
		security_group_ids?: [...string]
		service_network_identifier!: string
		status?:                     string
		timeouts?:                   #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_identifier!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
