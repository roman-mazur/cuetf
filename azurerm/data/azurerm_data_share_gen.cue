package data

#azurerm_data_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_data_share")
	close({
		timeouts?:    #timeouts
		account_id!:  string
		description?: string
		id?:          string
		kind?:        string
		name!:        string
		snapshot_schedule?: [...close({
			name?:       string
			recurrence?: string
			start_time?: string
		})]
		terms?: string
	})

	#timeouts: close({
		read?: string
	})
}
