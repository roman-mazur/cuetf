package res

import "list"

#azurerm_billing_account_cost_management_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_billing_account_cost_management_export")
	close({
		active?:             bool
		billing_account_id!: string
		file_format?:        string
		id?:                 string
		export_data_options!: matchN(1, [#export_data_options, list.MaxItems(1) & [_, ...] & [...#export_data_options]])
		name!:                         string
		recurrence_period_end_date!:   string
		recurrence_period_start_date!: string
		recurrence_type!:              string
		export_data_storage_location!: matchN(1, [#export_data_storage_location, list.MaxItems(1) & [_, ...] & [...#export_data_storage_location]])
		timeouts?: #timeouts
	})

	#export_data_options: close({
		time_frame!: string
		type!:       string
	})

	#export_data_storage_location: close({
		container_id!:     string
		root_folder_path!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
