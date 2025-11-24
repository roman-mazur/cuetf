package res

import "list"

#google_apphub_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apphub_application")
	close({
		// Required. The Application identifier.
		application_id!: string

		// Output only. Create time.
		create_time?: string

		// Optional. User-defined description of an Application.
		description?: string

		// Optional. User-defined name for the Application.
		display_name?: string

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string
		id?:       string

		// Identifier. The resource name of an Application. Format:
		// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
		name?: string

		// Output only. Application state.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// DELETING
		state?: string
		attributes?: matchN(1, [#attributes, list.MaxItems(1) & [...#attributes]])
		scope!: matchN(1, [#scope, list.MaxItems(1) & [_, ...] & [...#scope]])
		timeouts?: #timeouts
		project?:  string

		// Output only. A universally unique identifier (in UUID4 format)
		// for the 'Application'.
		uid?: string

		// Output only. Update time.
		update_time?: string
	})

	#attributes: close({
		business_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/business_owners", [..._#defs."/$defs/attributes/$defs/business_owners"]])
		criticality?: matchN(1, [_#defs."/$defs/attributes/$defs/criticality", list.MaxItems(1) & [..._#defs."/$defs/attributes/$defs/criticality"]])
		developer_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/developer_owners", [..._#defs."/$defs/attributes/$defs/developer_owners"]])
		environment?: matchN(1, [_#defs."/$defs/attributes/$defs/environment", list.MaxItems(1) & [..._#defs."/$defs/attributes/$defs/environment"]])
		operator_owners?: matchN(1, [_#defs."/$defs/attributes/$defs/operator_owners", [..._#defs."/$defs/attributes/$defs/operator_owners"]])
	})

	#scope: close({
		// Required. Scope Type.
		// Possible values:
		// REGIONAL
		// GLOBAL Possible values: ["REGIONAL", "GLOBAL"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attributes/$defs/business_owners": close({
		// Optional. Contact's name.
		display_name?: string

		// Required. Email address of the contacts.
		email!: string
	})

	_#defs: "/$defs/attributes/$defs/criticality": close({
		// Criticality type. Possible values: ["MISSION_CRITICAL", "HIGH",
		// "MEDIUM", "LOW"]
		type!: string
	})

	_#defs: "/$defs/attributes/$defs/developer_owners": close({
		// Optional. Contact's name.
		display_name?: string

		// Required. Email address of the contacts.
		email!: string
	})

	_#defs: "/$defs/attributes/$defs/environment": close({
		// Environment type. Possible values: ["PRODUCTION", "STAGING",
		// "TEST", "DEVELOPMENT"]
		type!: string
	})

	_#defs: "/$defs/attributes/$defs/operator_owners": close({
		// Optional. Contact's name.
		display_name?: string

		// Required. Email address of the contacts.
		email!: string
	})
}
