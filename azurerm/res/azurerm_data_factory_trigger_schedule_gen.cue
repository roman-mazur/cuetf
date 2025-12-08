package res

import "list"

#azurerm_data_factory_trigger_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_trigger_schedule")
	close({
		activated?: bool
		pipeline?: matchN(1, [#pipeline, [...#pipeline]])
		annotations?: [...string]
		data_factory_id!: string
		description?:     string
		end_time?:        string
		frequency?:       string
		id?:              string
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		interval?:      number
		name!:          string
		pipeline_name?: string
		pipeline_parameters?: [string]: string
		start_time?: string
		time_zone?:  string
		timeouts?:   #timeouts
	})

	#pipeline: close({
		name!: string
		parameters?: [string]: string
	})

	#schedule: close({
		monthly?: matchN(1, [_#defs."/$defs/schedule/$defs/monthly", [..._#defs."/$defs/schedule/$defs/monthly"]])
		days_of_month?: [...number]
		days_of_week?: [...string]
		hours?: [...number]
		minutes?: [...number]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/schedule/$defs/monthly": close({
		week?:    number
		weekday!: string
	})
}
