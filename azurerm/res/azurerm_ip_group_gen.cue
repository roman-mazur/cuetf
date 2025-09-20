package res

#azurerm_ip_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_ip_group")
	close({
		timeouts?: #timeouts
		cidrs?: [...string]
		firewall_ids?: [...string]
		firewall_policy_ids?: [...string]
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
