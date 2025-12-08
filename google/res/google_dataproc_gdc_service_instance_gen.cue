package res

import "list"

#google_dataproc_gdc_service_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_gdc_service_instance")
	close({
		// The timestamp when the resource was created.
		create_time?: string

		// User-provided human-readable name to be used in user
		// interfaces.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Effective service account associated with ServiceInstance. This
		// will be the service_account if specified. Otherwise, it will
		// be an automatically created per-resource P4SA that also
		// automatically has Fleet Workload. Identity bindings applied.
		effective_service_account?: string

		// The labels to associate with this service instance. Labels may
		// be used for filtering and billing tracking.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Location of the resource.
		location!: string

		// Identifier. The name of the service instance.
		name?: string

		// Whether the service instance is currently reconciling. True if
		// the current state of the resource does not match the intended
		// state, and the system is working to reconcile them, whether or
		// not the change was user initiated.
		reconciling?: bool

		// The intended state to which the service instance is
		// reconciling. Possible values:
		// * 'CREATING'
		// * 'ACTIVE'
		// * 'DISCONNECTED'
		// * 'DELETING'
		// * 'STOPPING'
		// * 'STOPPED'
		// * 'STARTING'
		// * 'UPDATING'
		// * 'FAILED'
		requested_state?: string
		project?:         string

		// Requested service account to associate with ServiceInstance.
		service_account?: string
		gdce_cluster?: matchN(1, [#gdce_cluster, list.MaxItems(1) & [...#gdce_cluster]])
		spark_service_instance_config?: matchN(1, [#spark_service_instance_config, list.MaxItems(1) & [...#spark_service_instance_config]])
		timeouts?: #timeouts

		// Id of the service instance.
		service_instance_id!: string

		// The current state. Possible values:
		// * 'CREATING'
		// * 'ACTIVE'
		// * 'DISCONNECTED'
		// * 'DELETING'
		// * 'STOPPING'
		// * 'STOPPED'
		// * 'STARTING'
		// * 'UPDATING'
		// * 'FAILED'
		state?: string

		// A message explaining the current state.
		state_message?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique identifier for this service instance,
		// formatted as UUID4.
		uid?: string

		// The timestamp when the resource was most recently updated.
		update_time?: string
	})

	#gdce_cluster: close({
		// Gdce cluster resource id.
		gdce_cluster!: string
	})

	#spark_service_instance_config: close({})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
