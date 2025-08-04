package res

import "list"

#aws_ce_anomaly_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ce_anomaly_subscription")
	close({
		subscriber?: matchN(1, [#subscriber, [_, ...] & [...#subscriber]])
		account_id?: string
		arn?:        string
		frequency!:  string
		id?:         string
		monitor_arn_list!: [...string]
		name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		threshold_expression?: matchN(1, [#threshold_expression, list.MaxItems(1) & [...#threshold_expression]])
	})

	#subscriber: close({
		address!: string
		type!:    string
	})

	#threshold_expression: close({
		and?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/and", [..._#defs."/$defs/threshold_expression/$defs/and"]])
		cost_category?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/dimension"]])
		not?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/not", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/not"]])
		or?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/or", [..._#defs."/$defs/threshold_expression/$defs/or"]])
		tags?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/tags"]])
	})

	_#defs: "/$defs/threshold_expression/$defs/and": close({
		cost_category?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/and/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/and/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/and/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/and/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/and/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/and/$defs/tags"]])
	})

	_#defs: "/$defs/threshold_expression/$defs/and/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/and/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/and/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/not": close({
		cost_category?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/not/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/not/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/not/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/not/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/not/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/not/$defs/tags"]])
	})

	_#defs: "/$defs/threshold_expression/$defs/not/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/not/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/not/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/or": close({
		cost_category?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/or/$defs/cost_category", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/or/$defs/cost_category"]])
		dimension?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/or/$defs/dimension", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/or/$defs/dimension"]])
		tags?: matchN(1, [_#defs."/$defs/threshold_expression/$defs/or/$defs/tags", list.MaxItems(1) & [..._#defs."/$defs/threshold_expression/$defs/or/$defs/tags"]])
	})

	_#defs: "/$defs/threshold_expression/$defs/or/$defs/cost_category": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/or/$defs/dimension": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/or/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})

	_#defs: "/$defs/threshold_expression/$defs/tags": close({
		key?: string
		match_options?: [...string]
		values?: [...string]
	})
}
