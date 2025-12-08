package res

import "list"

#azurerm_data_factory_flowlet_data_flow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_data_factory_flowlet_data_flow")
	close({
		annotations?: [...string]
		sink?: matchN(1, [#sink, [...#sink]])
		data_factory_id!: string
		description?:     string
		folder?:          string
		source?: matchN(1, [#source, [...#source]])
		id?:       string
		timeouts?: #timeouts
		name!:     string
		script?:   string
		script_lines?: [...string]
		transformation?: matchN(1, [#transformation, [...#transformation]])
	})

	#sink: close({
		dataset?: matchN(1, [_#defs."/$defs/sink/$defs/dataset", list.MaxItems(1) & [..._#defs."/$defs/sink/$defs/dataset"]])
		flowlet?: matchN(1, [_#defs."/$defs/sink/$defs/flowlet", list.MaxItems(1) & [..._#defs."/$defs/sink/$defs/flowlet"]])
		linked_service?: matchN(1, [_#defs."/$defs/sink/$defs/linked_service", list.MaxItems(1) & [..._#defs."/$defs/sink/$defs/linked_service"]])
		rejected_linked_service?: matchN(1, [_#defs."/$defs/sink/$defs/rejected_linked_service", list.MaxItems(1) & [..._#defs."/$defs/sink/$defs/rejected_linked_service"]])
		schema_linked_service?: matchN(1, [_#defs."/$defs/sink/$defs/schema_linked_service", list.MaxItems(1) & [..._#defs."/$defs/sink/$defs/schema_linked_service"]])
		description?: string
		name!:        string
	})

	#source: close({
		dataset?: matchN(1, [_#defs."/$defs/source/$defs/dataset", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/dataset"]])
		flowlet?: matchN(1, [_#defs."/$defs/source/$defs/flowlet", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/flowlet"]])
		linked_service?: matchN(1, [_#defs."/$defs/source/$defs/linked_service", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/linked_service"]])
		rejected_linked_service?: matchN(1, [_#defs."/$defs/source/$defs/rejected_linked_service", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/rejected_linked_service"]])
		schema_linked_service?: matchN(1, [_#defs."/$defs/source/$defs/schema_linked_service", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/schema_linked_service"]])
		description?: string
		name!:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#transformation: close({
		dataset?: matchN(1, [_#defs."/$defs/transformation/$defs/dataset", list.MaxItems(1) & [..._#defs."/$defs/transformation/$defs/dataset"]])
		flowlet?: matchN(1, [_#defs."/$defs/transformation/$defs/flowlet", list.MaxItems(1) & [..._#defs."/$defs/transformation/$defs/flowlet"]])
		linked_service?: matchN(1, [_#defs."/$defs/transformation/$defs/linked_service", list.MaxItems(1) & [..._#defs."/$defs/transformation/$defs/linked_service"]])
		description?: string
		name!:        string
	})

	_#defs: "/$defs/sink/$defs/dataset": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/sink/$defs/flowlet": close({
		dataset_parameters?: string
		name!:               string
		parameters?: [string]: string
	})

	_#defs: "/$defs/sink/$defs/linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/sink/$defs/rejected_linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/sink/$defs/schema_linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/source/$defs/dataset": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/source/$defs/flowlet": close({
		dataset_parameters?: string
		name!:               string
		parameters?: [string]: string
	})

	_#defs: "/$defs/source/$defs/linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/source/$defs/rejected_linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/source/$defs/schema_linked_service": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/transformation/$defs/dataset": close({
		name!: string
		parameters?: [string]: string
	})

	_#defs: "/$defs/transformation/$defs/flowlet": close({
		dataset_parameters?: string
		name!:               string
		parameters?: [string]: string
	})

	_#defs: "/$defs/transformation/$defs/linked_service": close({
		name!: string
		parameters?: [string]: string
	})
}
