package res

import "list"

#azurerm_logic_app_trigger_recurrence: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_logic_app_trigger_recurrence")
	close({
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		frequency!:    string
		id?:           string
		interval!:     number
		logic_app_id!: string
		name!:         string
		start_time?:   string
		time_zone?:    string
		timeouts?:     #timeouts
	})

	#schedule: close({
		at_these_hours?: [...number]
		at_these_minutes?: [...number]
		on_these_days?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
