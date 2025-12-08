package res

import "list"

#azurerm_automation_source_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_automation_source_control")
	close({
		automatic_sync?:        bool
		automation_account_id!: string
		branch?:                string
		description?:           string
		folder_path!:           string
		id?:                    string
		name!:                  string
		security!: matchN(1, [#security, list.MaxItems(1) & [_, ...] & [...#security]])
		publish_runbook_enabled?: bool
		timeouts?:                #timeouts
		repository_url!:          string
		source_control_type!:     string
	})

	#security: close({
		refresh_token?: string
		token!:         string
		token_type!:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
