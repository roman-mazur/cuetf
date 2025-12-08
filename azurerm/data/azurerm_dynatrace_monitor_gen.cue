package data

#azurerm_dynatrace_monitor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_dynatrace_monitor")
	close({
		environment_properties?: [...close({
			environment_info?: [...close({
				environment_id?: string
			})]
		})]
		id?: string
		identity?: [...close({
			principal_id?: string
			tenant_id?:    string
			type?:         string
		})]
		location?:                 string
		marketplace_subscription?: string
		monitoring_enabled?:       bool
		name!:                     string
		plan?: [...close({
			billing_cycle?:  string
			effective_date?: string
			plan?:           string
			usage_type?:     string
		})]
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		user?: [...close({
			country?:      string
			email?:        string
			first_name?:   string
			last_name?:    string
			phone_number?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
