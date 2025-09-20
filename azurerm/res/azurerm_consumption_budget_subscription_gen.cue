package res

import "list"

#azurerm_consumption_budget_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_consumption_budget_subscription")
	close({
		filter?: matchN(1, [#filter, list.MaxItems(1) & [...#filter]])
		amount!:          number
		etag?:            string
		id?:              string
		name!:            string
		subscription_id!: string
		time_grain?:      string
		notification?: matchN(1, [#notification, list.MaxItems(5) & [_, ...] & [...#notification]])
		time_period?: matchN(1, [#time_period, list.MaxItems(1) & [_, ...] & [...#time_period]])
		timeouts?: #timeouts
	})

	#filter: close({
		dimension?: matchN(1, [_#defs."/$defs/filter/$defs/dimension", [..._#defs."/$defs/filter/$defs/dimension"]])
		tag?: matchN(1, [_#defs."/$defs/filter/$defs/tag", [..._#defs."/$defs/filter/$defs/tag"]])
	})

	#notification: close({
		contact_emails?: [...string]
		contact_groups?: [...string]
		contact_roles?: [...string]
		enabled?:        bool
		operator!:       string
		threshold!:      number
		threshold_type?: string
	})

	#time_period: close({
		end_date?:   string
		start_date!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/filter/$defs/dimension": close({
		name!:     string
		operator?: string
		values!: [...string]
	})

	_#defs: "/$defs/filter/$defs/tag": close({
		name!:     string
		operator?: string
		values!: [...string]
	})
}
