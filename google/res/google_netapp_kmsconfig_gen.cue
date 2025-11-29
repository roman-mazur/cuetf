package res

#google_netapp_kmsconfig: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_kmsconfig")
	close({
		// Resource name of the KMS key to use. Only regional keys are
		// supported. Format:
		// 'projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{key}}'.
		crypto_key_name!: string

		// Description for the CMEK policy.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Access to the key needs to be granted. The instructions contain
		// gcloud commands to run to grant access.
		//
		// To make the policy work, a CMEK policy check is required, which
		// verifies key access.
		instructions?: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the policy location. CMEK policies apply to the whole
		// region.
		location!: string

		// Name of the CMEK policy.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// The Service account which needs to have access to the provided
		// KMS key.
		service_account?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
