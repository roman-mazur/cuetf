package res

import "list"

#azurerm_resource_group_cost_management_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_resource_group_cost_management_view")
	close({
		accumulated!: bool
		dataset!: matchN(1, [#dataset, list.MaxItems(1) & [_, ...] & [...#dataset]])
		chart_type!:   string
		display_name!: string
		id?:           string
		kpi?: matchN(1, [#kpi, [...#kpi]])
		name!: string
		pivot?: matchN(1, [#pivot, [...#pivot]])
		report_type!:       string
		resource_group_id!: string
		timeframe!:         string
		timeouts?:          #timeouts
	})

	#dataset: close({
		aggregation!: matchN(1, [_#defs."/$defs/dataset/$defs/aggregation", [_, ...] & [..._#defs."/$defs/dataset/$defs/aggregation"]])
		grouping?: matchN(1, [_#defs."/$defs/dataset/$defs/grouping", [..._#defs."/$defs/dataset/$defs/grouping"]])
		sorting?: matchN(1, [_#defs."/$defs/dataset/$defs/sorting", [..._#defs."/$defs/dataset/$defs/sorting"]])
		granularity!: string
	})

	#kpi: close({
		type!: string
	})

	#pivot: close({
		name!: string
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/dataset/$defs/aggregation": close({
		column_name!: string
		name!:        string
	})

	_#defs: "/$defs/dataset/$defs/grouping": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/dataset/$defs/sorting": close({
		direction!: string
		name!:      string
	})
}
