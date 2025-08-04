package res

#aws_vpclattice_service_network_resource_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service_network_resource_association")
	close({
		timeouts?: #timeouts
		arn?:      string
		dns_entry?: [...close({
			domain_name?:    string
			hosted_zone_id?: string
		})]
		id?:                                string
		region?:                            string
		resource_configuration_identifier!: string
		service_network_identifier!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
