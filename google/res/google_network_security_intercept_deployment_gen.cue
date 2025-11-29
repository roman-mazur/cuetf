package res

#google_network_security_intercept_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_intercept_deployment")
	close({
		// The timestamp when the resource was created.
		// See https://google.aip.dev/148#timestamps.
		create_time?: string

		// User-provided description of the deployment.
		// Used as additional context for the deployment.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The regional forwarding rule that fronts the interceptors, for
		// example:
		// 'projects/123456789/regions/us-central1/forwardingRules/my-rule'.
		// See https://google.aip.dev/124.
		forwarding_rule!: string

		// The deployment group that this deployment is a part of, for
		// example:
		// 'projects/123456789/locations/global/interceptDeploymentGroups/my-dg'.
		// See https://google.aip.dev/124.
		intercept_deployment_group!: string
		id?:                         string

		// The ID to use for the new deployment, which will become the
		// final
		// component of the deployment's resource name.
		intercept_deployment_id!: string

		// Labels are key/value pairs that help to organize and filter
		// resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The cloud location of the deployment, e.g. 'us-central1-a' or
		// 'asia-south1-b'.
		location!: string

		// The resource name of this deployment, for example:
		// 'projects/123456789/locations/us-central1-a/interceptDeployments/my-dep'.
		// See https://google.aip.dev/122 for more details.
		name?:     string
		timeouts?: #timeouts

		// The current state of the resource does not match the user's
		// intended state,
		// and the system is working to reconcile them. This part of the
		// normal
		// operation (e.g. linking a new association to the parent group).
		// See https://google.aip.dev/128.
		reconciling?: bool
		project?:     string

		// The current state of the deployment.
		// See https://google.aip.dev/216.
		// Possible values:
		// STATE_UNSPECIFIED
		// ACTIVE
		// CREATING
		// DELETING
		// OUT_OF_SYNC
		// DELETE_FAILED
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

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
