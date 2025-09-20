package res

#azurerm_oracle_exadata_infrastructure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_oracle_exadata_infrastructure")
	close({
		compute_count!: number
		customer_contacts?: [...string]
		database_server_type?: string
		display_name!:         string
		id?:                   string
		location!:             string
		name!:                 string
		maintenance_window?: matchN(1, [#maintenance_window, [...#maintenance_window]])
		resource_group_name!: string
		shape!:               string
		timeouts?:            #timeouts
		storage_count!:       number
		storage_server_type?: string
		tags?: [string]: string
		zones!: [...string]
	})

	#maintenance_window: close({
		days_of_week?: [...string]
		hours_of_day?: [...number]
		lead_time_in_weeks?: number
		months?: [...string]
		patching_mode?: string
		preference?:    string
		weeks_of_month?: [...number]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
