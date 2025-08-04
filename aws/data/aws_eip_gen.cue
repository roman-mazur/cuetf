package data

#aws_eip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eip")
	close({
		arn?:                      string
		association_id?:           string
		carrier_ip?:               string
		customer_owned_ip?:        string
		customer_owned_ipv4_pool?: string
		domain?:                   string
		id?:                       string
		instance_id?:              string
		ipam_pool_id?:             string
		network_interface_id?:     string
		filter?: matchN(1, [#filter, [...#filter]])
		network_interface_owner_id?: string
		private_dns?:                string
		private_ip?:                 string
		ptr_record?:                 string
		timeouts?:                   #timeouts
		public_dns?:                 string
		public_ip?:                  string
		public_ipv4_pool?:           string
		region?:                     string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
