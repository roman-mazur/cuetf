package res

import "list"

#azurerm_logic_app_integration_account_batch_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_logic_app_integration_account_batch_configuration")
	close({
		release_criteria?: matchN(1, [#release_criteria, list.MaxItems(1) & [_, ...] & [...#release_criteria]])
		batch_group_name!:         string
		id?:                       string
		integration_account_name!: string
		metadata?: [string]: string
		name!:                string
		resource_group_name!: string
		timeouts?:            #timeouts
	})

	#release_criteria: close({
		recurrence?: matchN(1, [_#defs."/$defs/release_criteria/$defs/recurrence", list.MaxItems(1) & [..._#defs."/$defs/release_criteria/$defs/recurrence"]])
		batch_size?:    number
		message_count?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/release_criteria/$defs/recurrence": close({
		schedule?: matchN(1, [_#defs."/$defs/release_criteria/$defs/recurrence/$defs/schedule", list.MaxItems(1) & [..._#defs."/$defs/release_criteria/$defs/recurrence/$defs/schedule"]])
		end_time?:   string
		frequency!:  string
		interval!:   number
		start_time?: string
		time_zone?:  string
	})

	_#defs: "/$defs/release_criteria/$defs/recurrence/$defs/schedule": close({
		monthly?: matchN(1, [_#defs."/$defs/release_criteria/$defs/recurrence/$defs/schedule/$defs/monthly", [..._#defs."/$defs/release_criteria/$defs/recurrence/$defs/schedule/$defs/monthly"]])
		hours?: [...number]
		minutes?: [...number]
		month_days?: [...number]
		week_days?: [...string]
	})

	_#defs: "/$defs/release_criteria/$defs/recurrence/$defs/schedule/$defs/monthly": close({
		week!:    number
		weekday!: string
	})
}
