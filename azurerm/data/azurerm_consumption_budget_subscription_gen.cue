package data

#azurerm_consumption_budget_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_consumption_budget_subscription")
	close({
		timeouts?: #timeouts
		amount?:   number
		filter?: [...close({
			dimension?: [...close({
				name?:     string
				operator?: string
				values?: [...string]
			})]
			not?: [...close({
				dimension?: [...close({
					name?:     string
					operator?: string
					values?: [...string]
				})]
				tag?: [...close({
					name?:     string
					operator?: string
					values?: [...string]
				})]
			})]
			tag?: [...close({
				name?:     string
				operator?: string
				values?: [...string]
			})]
		})]
		id?:   string
		name!: string
		notification?: [...close({
			contact_emails?: [...string]
			contact_groups?: [...string]
			contact_roles?: [...string]
			enabled?:        bool
			operator?:       string
			threshold?:      number
			threshold_type?: string
		})]
		subscription_id!: string
		time_grain?:      string
		time_period?: [...close({
			end_date?:   string
			start_date?: string
		})]
	})

	#timeouts: close({
		read?: string
	})
}
