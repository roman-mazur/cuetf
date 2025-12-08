package res

#azurerm_cost_management_scheduled_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cost_management_scheduled_action")
	close({
		day_of_month?: number
		days_of_week?: [...string]
		display_name!:         string
		email_address_sender!: string
		email_addresses!: [...string]
		email_subject!: string
		end_date!:      string
		frequency!:     string
		hour_of_day?:   number
		id?:            string
		message?:       string
		name!:          string
		timeouts?:      #timeouts
		start_date!:    string
		view_id!:       string
		weeks_of_month?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
