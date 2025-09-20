package res

#azurerm_oracle_autonomous_database_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_autonomous_database_backup")
	close({
		timeouts?:                 #timeouts
		autonomous_database_id!:   string
		id?:                       string
		name!:                     string
		retention_period_in_days!: number
		type?:                     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
