package res

#azurerm_netapp_backup_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_netapp_backup_policy")
	close({
		account_name!:            string
		daily_backups_to_keep?:   number
		enabled?:                 bool
		id?:                      string
		location!:                string
		monthly_backups_to_keep?: number
		name!:                    string
		timeouts?:                #timeouts
		resource_group_name!:     string
		tags?: [string]: string
		weekly_backups_to_keep?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
