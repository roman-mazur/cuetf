package res

#azurerm_cost_anomaly_alert: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_cost_anomaly_alert")
	close({
		timeouts?:     #timeouts
		display_name!: string
		email_addresses!: [...string]
		email_subject!:      string
		id?:                 string
		message?:            string
		name!:               string
		notification_email?: string
		subscription_id?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
