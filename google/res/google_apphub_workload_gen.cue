package res

import "list"

#google_apphub_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apphub_workload")
	close({
		// Part of 'parent'. Full resource name of a parent Application.
		// Example:
		// projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
		application_id!: string

		// Output only. Create time.
		create_time?: string

		// User-defined description of a Workload.
		description?: string

		// Immutable. The resource name of the original discovered
		// workload.
		discovered_workload!: string

		// User-defined name for the Workload.
		display_name?: string

		// Part of 'parent'. Full resource name of a parent Application.
		// Example:
		// projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
		location!: string
		id?:       string

		// Identifier. The resource name of the Workload.
		// Format:"projects/{host-project-id}/locations/{location}/applications/{application-id}/workloads/{workload-id}"
		name?: string

		// Output only. Workload state. Possible values: STATE_UNSPECIFIED
		// CREATING ACTIVE DELETING DETACHED
		state?:   string
		project?: string
		attributes?: matchN(1, [#attributes, list.MaxItems(1) & [...#attributes]])
		timeouts?: #timeouts

		// Output only. A universally unique identifier (UUID) for the
		// 'Workload' in the UUID4 format.
		uid?: string

		// Output only. Update time.
		update_time?: string

		// The Workload identifier.
		workload_id!: string

		// Properties of an underlying compute resource represented by the
		// Workload.
		workload_properties?: [...close({
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
			identity?: [...close({
				principal?: string
			})]
			location?: string
			zone?:     string
		})]

		// Reference of an underlying compute resource represented by the
		// Workload.
		workload_reference?: [...close({
			uri?: string
		})]
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

		// Email address of the contacts.
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

		// Email address of the contacts.
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

		// Email address of the contacts.
		email!: string
	})
}
