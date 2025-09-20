package res

#azurerm_application_insights_smart_detection_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_application_insights_smart_detection_rule")
	close({
		timeouts?: #timeouts
		additional_email_recipients?: [...string]
		application_insights_id!:            string
		enabled?:                            bool
		id?:                                 string
		name!:                               string
		send_emails_to_subscription_owners?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
