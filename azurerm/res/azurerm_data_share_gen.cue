package res

import "list"

#azurerm_data_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share")
	close({
		snapshot_schedule?: matchN(1, [#snapshot_schedule, list.MaxItems(1) & [...#snapshot_schedule]])
		account_id!:  string
		description?: string
		id?:          string
		kind!:        string
		name!:        string
		terms?:       string
		timeouts?:    #timeouts
	})

	#snapshot_schedule: close({
		name!:       string
		recurrence!: string
		start_time!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
