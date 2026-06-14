package res

#google_network_security_ull_mirroring_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_ull_mirroring_engine")
	close({
		timeouts?: #timeouts

		// The timestamp when the resource was created.
		// See https://google.aip.dev/148#timestamps.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels are key/value pairs that help to organize and filter
		// resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The cloud location of the engine, e.g. 'us-south1-d' or
		// 'us-south1-e'.
		location!: string

		// The resource name of this engine, for example:
		// 'projects/123456789/locations/us-south1-d/ullMirroringEngines/my-engine'.
		// See https://google.aip.dev/122 for more details.
		name?:    string
		project?: string

		// The current state of the resource does not match the user's
		// intended state,
		// and the system is working to reconcile them. This is part of
		// the normal
		// operation. See https://google.aip.dev/128.
		reconciling?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The ID to use for the new engine, which will become the final
		// component of the engine's resource name.
		ull_mirroring_engine_id!: string

		// The timestamp when the resource was most recently updated.
		// See https://google.aip.dev/148#timestamps.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
