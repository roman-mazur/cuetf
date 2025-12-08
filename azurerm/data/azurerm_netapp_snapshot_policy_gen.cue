package data

#azurerm_netapp_snapshot_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/azurerm_netapp_snapshot_policy")
	close({
		account_name!: string
		daily_schedule?: [...close({
			hour?:              number
			minute?:            number
			snapshots_to_keep?: number
		})]
		enabled?: bool
		hourly_schedule?: [...close({
			minute?:            number
			snapshots_to_keep?: number
		})]
		id?:       string
		location?: string
		monthly_schedule?: [...close({
			days_of_month?: [...number]
			hour?:              number
			minute?:            number
			snapshots_to_keep?: number
		})]
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
		tags?: [string]: string
		weekly_schedule?: [...close({
			days_of_week?: [...string]
			hour?:              number
			minute?:            number
			snapshots_to_keep?: number
		})]
	})

	#timeouts: close({
		read?: string
	})
}
