package res

import "list"

#azurerm_dev_test_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_test_schedule")
	close({
		id?:                  string
		lab_name!:            string
		location!:            string
		name!:                string
		resource_group_name!: string
		daily_recurrence?: matchN(1, [#daily_recurrence, list.MaxItems(1) & [...#daily_recurrence]])
		status?: string
		tags?: [string]: string
		hourly_recurrence?: matchN(1, [#hourly_recurrence, list.MaxItems(1) & [...#hourly_recurrence]])
		notification_settings!: matchN(1, [#notification_settings, list.MaxItems(1) & [_, ...] & [...#notification_settings]])
		task_type!: string
		timeouts?:  #timeouts
		weekly_recurrence?: matchN(1, [#weekly_recurrence, list.MaxItems(1) & [...#weekly_recurrence]])
		time_zone_id!: string
	})

	#daily_recurrence: close({
		time!: string
	})

	#hourly_recurrence: close({
		minute!: number
	})

	#notification_settings: close({
		status?:          string
		time_in_minutes?: number
		webhook_url?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#weekly_recurrence: close({
		time!: string
		week_days?: [...string]
	})
}
