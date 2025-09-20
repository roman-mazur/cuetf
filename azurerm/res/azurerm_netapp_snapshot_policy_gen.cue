package res

import "list"

#azurerm_netapp_snapshot_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_netapp_snapshot_policy")
	close({
		account_name!:        string
		enabled!:             bool
		id?:                  string
		location!:            string
		name!:                string
		resource_group_name!: string
		tags?: [string]: string
		daily_schedule?: matchN(1, [#daily_schedule, list.MaxItems(1) & [...#daily_schedule]])
		hourly_schedule?: matchN(1, [#hourly_schedule, list.MaxItems(1) & [...#hourly_schedule]])
		monthly_schedule?: matchN(1, [#monthly_schedule, list.MaxItems(1) & [...#monthly_schedule]])
		timeouts?: #timeouts
		weekly_schedule?: matchN(1, [#weekly_schedule, list.MaxItems(1) & [...#weekly_schedule]])
	})

	#daily_schedule: close({
		hour!:              number
		minute!:            number
		snapshots_to_keep!: number
	})

	#hourly_schedule: close({
		minute!:            number
		snapshots_to_keep!: number
	})

	#monthly_schedule: close({
		days_of_month!: [...number]
		hour!:              number
		minute!:            number
		snapshots_to_keep!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#weekly_schedule: close({
		days_of_week!: [...string]
		hour!:              number
		minute!:            number
		snapshots_to_keep!: number
	})
}
