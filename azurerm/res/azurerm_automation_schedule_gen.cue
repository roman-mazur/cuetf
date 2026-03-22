package res

import "list"

#azurerm_automation_schedule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_schedule")
	close({
		monthly_occurrence?: matchN(1, [#monthly_occurrence, list.MaxItems(1) & [...#monthly_occurrence]])
		timeouts?:                #timeouts
		automation_account_name!: string
		description?:             string
		expiry_time?:             string
		frequency!:               string
		id?:                      string
		interval?:                number
		month_days?: [...number]
		name!:                string
		resource_group_name!: string
		start_time?:          string
		timezone?:            string
		week_days?: [...string]
	})

	#monthly_occurrence: close({
		day!:        string
		occurrence!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
