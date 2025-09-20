package res

#azurerm_container_connected_registry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_container_connected_registry")
	close({
		audit_log_enabled?: bool
		client_token_ids?: [...string]
		container_registry_id!: string
		id?:                    string
		log_level?:             string
		mode?:                  string
		notification?: matchN(1, [#notification, [...#notification]])
		name!:               string
		timeouts?:           #timeouts
		parent_registry_id?: string
		sync_message_ttl?:   string
		sync_schedule?:      string
		sync_token_id!:      string
		sync_window?:        string
	})

	#notification: close({
		action!: string
		digest?: string
		name!:   string
		tag?:    string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
