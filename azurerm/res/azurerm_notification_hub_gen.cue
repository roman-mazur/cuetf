package res

import "list"

#azurerm_notification_hub: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_notification_hub")
	close({
		apns_credential?: matchN(1, [#apns_credential, list.MaxItems(1) & [...#apns_credential]])
		id?:                  string
		location!:            string
		name!:                string
		namespace_name!:      string
		resource_group_name!: string
		tags?: [string]: string
		browser_credential?: matchN(1, [#browser_credential, list.MaxItems(1) & [...#browser_credential]])
		gcm_credential?: matchN(1, [#gcm_credential, list.MaxItems(1) & [...#gcm_credential]])
		timeouts?: #timeouts
	})

	#apns_credential: close({
		application_mode!: string
		bundle_id!:        string
		key_id!:           string
		team_id!:          string
		token!:            string
	})

	#browser_credential: close({
		subject!:           string
		vapid_private_key!: string
		vapid_public_key!:  string
	})

	#gcm_credential: close({
		api_key!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
