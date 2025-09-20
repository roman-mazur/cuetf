package res

import "list"

#azurerm_data_factory_trigger_tumbling_window: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_factory_trigger_tumbling_window")
	close({
		activated?: bool
		additional_properties?: [string]: string
		annotations?: [...string]
		data_factory_id!: string
		delay?:           string
		description?:     string
		end_time?:        string
		frequency!:       string
		id?:              string
		pipeline?: matchN(1, [#pipeline, list.MaxItems(1) & [_, ...] & [...#pipeline]])
		interval!:        number
		max_concurrency?: number
		name!:            string
		start_time!:      string
		retry?: matchN(1, [#retry, list.MaxItems(1) & [...#retry]])
		timeouts?: #timeouts
		trigger_dependency?: matchN(1, [#trigger_dependency, [...#trigger_dependency]])
	})

	#pipeline: close({
		name!: string
		parameters?: [string]: string
	})

	#retry: close({
		count!:    number
		interval?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#trigger_dependency: close({
		offset?:       string
		size?:         string
		trigger_name?: string
	})
}
