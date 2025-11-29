package res

import "list"

#google_apihub_api_hub_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apihub_api_hub_instance")
	close({
		// Optional. Identifier to assign to the Api Hub instance. Must be
		// unique within
		// scope of the parent resource. If the field is not provided,
		// system generated id will be used.
		//
		// This value should be 4-40 characters, and valid characters
		// are '/a-z[0-9]-_/'.
		api_hub_instance_id?: string

		// Output only. Creation timestamp.
		create_time?: string

		// Optional. Description of the ApiHub instance.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Optional. Instance labels to represent user-provided metadata.
		// Refer to cloud documentation on labels for more details.
		// https://cloud.google.com/compute/docs/labeling-resources
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. Format:
		// 'projects/{project}/locations/{location}/apiHubInstances/{apiHubInstance}'.
		name?:    string
		project?: string
		config!: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		timeouts?: #timeouts

		// Output only. The current state of the ApiHub instance.
		// Possible values:
		// STATE_UNSPECIFIED
		// INACTIVE
		// CREATING
		// ACTIVE
		// UPDATING
		// DELETING
		// FAILED
		state?: string

		// Output only. Extra information about ApiHub instance state.
		// Currently the message
		// would be populated when state is 'FAILED'.
		state_message?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. Last update timestamp.
		update_time?: string
	})

	#config: close({
		// Optional. The Customer Managed Encryption Key (CMEK) used for
		// data encryption.
		// The CMEK name should follow the format of
		// 'projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)',
		// where the location must match the instance location.
		// If the CMEK is not provided, a GMEK will be created for the
		// instance.
		cmek_key_name?: string

		// Optional. If true, the search will be disabled for the
		// instance. The default value
		// is false.
		disable_search?: bool

		// Optional. Encryption type for the region. If the encryption
		// type is CMEK, the
		// cmek_key_name must be provided. If no encryption type is
		// provided,
		// GMEK will be used.
		// Possible values:
		// ENCRYPTION_TYPE_UNSPECIFIED
		// GMEK
		// CMEK
		encryption_type?: string

		// Optional. The name of the Vertex AI location where the data
		// store is stored.
		vertex_location?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
