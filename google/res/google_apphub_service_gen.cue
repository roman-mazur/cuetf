package res

import "list"

#google_apphub_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apphub_service")
	close({
		// Part of 'parent'. Full resource name of a parent Application.
		// Example:
		// projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
		application_id!: string

		// Output only. Create time.
		create_time?: string

		// User-defined description of a Service.
		description?: string

		// Immutable. The resource name of the original discovered
		// service.
		discovered_service!: string

		// User-defined name for the Service.
		display_name?: string

		// Part of 'parent'. Full resource name of a parent Application.
		// Example:
		// projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
		location!: string
		id?:       string

		// Identifier. The resource name of a Service. Format:
		// "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}"
		name?: string

		// The Service identifier.
		service_id!: string
		project?:    string
		attributes?: matchN(1, [#attributes, list.MaxItems(1) & [...#attributes]])
		timeouts?: #timeouts

		// Properties of an underlying cloud resource that can comprise a
		// Service.
		service_properties?: [...close({
			extended_metadata?: [...close({
				key?: string
				value?: [...close({
					extended_metadata_schema?: string
					metadata_struct?:          string
				})]
			})]
			functional_type?: [...close({
				type?: string
			})]
			gcp_project?: string
			location?:    string
			registration_type?: [...close({
				type?: string
			})]
			zone?: string
		})]

		// Reference to an underlying networking resource that can
		// comprise a Service.
		service_reference?: [...close({
			uri?: string
		})]

		// Output only. Service state. Possible values: STATE_UNSPECIFIED
		// CREATING ACTIVE DELETING DETACHED
		state?: string

		// Output only. A universally unique identifier (UUID) for the
		// 'Service' in the UUID4
		// format.
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

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/attributes/$defs/business_owners": close({
		// Contact's name.
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
		// Contact's name.
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
		// Contact's name.
		display_name?: string

		// Required. Email address of the contacts.
		email!: string
	})
}
