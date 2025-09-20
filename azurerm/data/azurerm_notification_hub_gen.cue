package data

#azurerm_notification_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_notification_hub")
	close({
		timeouts?: #timeouts
		apns_credential?: [...close({
			application_mode?: string
			bundle_id?:        string
			key_id?:           string
			team_id?:          string
			token?:            string
		})]
		gcm_credential?: [...close({
			api_key?: string
		})]
		id?:                  string
		location?:            string
		name!:                string
		namespace_name!:      string
		resource_group_name!: string
		tags?: [string]: string
	})

	#timeouts: close({
		read?: string
	})
}
