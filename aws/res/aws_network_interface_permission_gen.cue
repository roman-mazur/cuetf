package res

#aws_network_interface_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface_permission")
	close({
		timeouts?:                        #timeouts
		aws_account_id!:                  string
		network_interface_id!:            string
		network_interface_permission_id?: string
		permission!:                      string
		region?:                          string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
