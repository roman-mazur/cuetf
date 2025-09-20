package res

import "list"

#azurerm_dev_test_global_vm_shutdown_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_dev_test_global_vm_shutdown_schedule")
	close({
		notification_settings?: matchN(1, [#notification_settings, list.MaxItems(1) & [_, ...] & [...#notification_settings]])
		daily_recurrence_time!: string
		enabled?:               bool
		id?:                    string
		location!:              string
		tags?: [string]: string
		timezone!:           string
		virtual_machine_id!: string
		timeouts?:           #timeouts
	})

	#notification_settings: close({
		email?:           string
		enabled!:         bool
		time_in_minutes?: number
		webhook_url?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
