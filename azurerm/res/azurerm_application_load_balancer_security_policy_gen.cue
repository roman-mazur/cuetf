package res

#azurerm_application_load_balancer_security_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_load_balancer_security_policy")
	close({
		timeouts?:                     #timeouts
		application_load_balancer_id!: string
		id?:                           string
		location!:                     string
		name!:                         string
		tags?: [string]: string
		web_application_firewall_policy_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
