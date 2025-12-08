package res

import "list"

#azurerm_pim_eligible_role_assignment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_pim_eligible_role_assignment")
	close({
		// The justification for this eligible role assignment
		justification?: string
		condition?:     string

		// Object ID of the principal for this eligible role assignment
		principal_id!:      string
		condition_version?: string
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [...#schedule]])
		id?: string

		// Type of principal to which the role will be assigned
		principal_type?: string

		// Role definition ID for this eligible role assignment
		role_definition_id!: string
		ticket?: matchN(1, [#ticket, list.MaxItems(1) & [...#ticket]])

		// Scope for this eligible role assignment, should be a valid
		// resource ID
		scope!:    string
		timeouts?: #timeouts
	})

	#schedule: close({
		expiration?: matchN(1, [_#defs."/$defs/schedule/$defs/expiration", list.MaxItems(1) & [..._#defs."/$defs/schedule/$defs/expiration"]])

		// The start date/time
		start_date_time?: string
	})

	#ticket: close({
		// User-supplied ticket number to be included with the request
		number?: string

		// User-supplied ticket system name to be included with the
		// request
		system?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})

	_#defs: "/$defs/schedule/$defs/expiration": close({
		// The duration of the eligible role assignment in days
		duration_days?: number

		// The duration of the eligible role assignment in hours
		duration_hours?: number

		// The end date/time of the eligible role assignment
		end_date_time?: string
	})
}
