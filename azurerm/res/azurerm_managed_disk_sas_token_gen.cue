package res

#azurerm_managed_disk_sas_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_managed_disk_sas_token")
	close({
		timeouts?:            #timeouts
		access_level!:        string
		duration_in_seconds!: number
		id?:                  string
		managed_disk_id!:     string
		sas_url?:             string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
