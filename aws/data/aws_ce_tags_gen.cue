package data

import "list"

#aws_ce_tags: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_tags")
	close({
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		id?:            string
		search_string?: string
		tag_key?:       string
		tags?: [...string]
		sort_by?: matchN(1, [#sort_by, [...#sort_by]])
		time_period?: matchN(1, [#time_period, list.MaxItems(1) & [_, ...] & [...#time_period]])
	})

	#filter: close({
		and?: matchN(1, [_#defs."/$defs/filter/$defs/and", [..._#defs."/$defs/filter/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/filter/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/filter/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/filter/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/filter/$defs/or", [..._#defs."/$defs/filter/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/filter/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/tags"]])
	})

	#sort_by: close({
		key?:        string
		sort_order?: string
	})

	#time_period: close({
		end!:   string
		start!: string
	})

	_#defs: "/$defs/filter/$defs/and": close({
		cost_category?: matchN(1, [_#defs."/$defs/filter/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/filter/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/and/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/filter/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/filter/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/not": close({
		cost_category?: matchN(1, [_#defs."/$defs/filter/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/filter/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/not/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/filter/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/filter/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/or": close({
		cost_category?: matchN(1, [_#defs."/$defs/filter/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/filter/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/or/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/filter/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/filter/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/filter/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/filter/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})
}
