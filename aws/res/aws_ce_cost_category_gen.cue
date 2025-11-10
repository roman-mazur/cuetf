package res

import "list"

#aws_ce_cost_category: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_cost_category")
	close({
		arn?:             string
		default_value?:   string
		effective_end?:   string
		effective_start?: string
		rule!: matchN(1, [#rule, [_, ...] & [...#rule]])
		id?:           string
		name!:         string
		rule_version!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		split_charge_rule?: matchN(1, [#split_charge_rule, [...#split_charge_rule]])
	})

	#rule: close({
		inherited_value?: matchN(1, [_#defs."/$defs/rule/$defs/inherited_value", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/inherited_value"]])
		rule?: matchN(1, [_#defs."/$defs/rule/$defs/rule", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule"]])
		type?:  string
		value?: string
	})

	#split_charge_rule: close({
		parameter?: matchN(1, [_#defs."/$defs/split_charge_rule/$defs/parameter", [..._#defs."/$defs/split_charge_rule/$defs/parameter"]])
		method!: string
		source!: string
		targets!: [...string]
	})

	_#defs: "/$defs/rule/$defs/inherited_value": close({
		dimension_key?:  string
		dimension_name?: string
	})

	_#defs: "/$defs/rule/$defs/rule": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and", [..._#defs."/$defs/rule/$defs/rule/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or", [..._#defs."/$defs/rule/$defs/rule/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and", [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or", [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/and": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/not": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/or": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and", [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or", [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/and": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/not": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/or": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or": close({
		and?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and", [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or", [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/and": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/not": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/or": close({
		cost_category?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/rule/$defs/rule/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/split_charge_rule/$defs/parameter": close({
		type?: string
		values?: [...string]
	})
}
