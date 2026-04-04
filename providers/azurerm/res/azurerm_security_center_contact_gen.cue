package res

#azurerm_security_center_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_security_center_contact")
	close({
		timeouts?:            #timeouts
		alert_notifications!: bool
		alerts_to_admins!:    bool
		email!:               string
		id?:                  string
		name!:                string
		phone?:               string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
