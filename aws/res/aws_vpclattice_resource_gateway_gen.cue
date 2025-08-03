package res

#aws_vpclattice_resource_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_resource_gateway")
	close({
		arn?:             string
		timeouts?:        #timeouts
		id?:              string
		ip_address_type?: string
		name!:            string
		region?:          string
		security_group_ids?: [...string]
		status?: string
		subnet_ids!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
