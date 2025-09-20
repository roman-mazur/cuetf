package data

#azurerm_policy_virtual_machine_configuration_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_policy_virtual_machine_configuration_assignment")
	close({
		assignment_hash?:                string
		compliance_status?:              string
		content_hash?:                   string
		content_uri?:                    string
		id?:                             string
		last_compliance_status_checked?: string
		latest_report_id?:               string
		timeouts?:                       #timeouts
		name!:                           string
		resource_group_name!:            string
		virtual_machine_name!:           string
	})

	#timeouts: close({
		read?: string
	})
}
