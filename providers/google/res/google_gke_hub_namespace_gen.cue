package res

google_gke_hub_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gke_hub_namespace")
	close({
		timeouts?: #timeouts

		// Time the Namespace was created in UTC.
		create_time?: string

		// Time the Namespace was deleted in UTC.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels for this Namespace.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The resource name for the namespace
		name?: string

		// Namespace-level cluster namespace labels. These labels are applied
		// to the related namespace of the member clusters bound to the parent
		// Scope. Scope-level labels ('namespace_labels' in the Fleet Scope
		// resource) take precedence over Namespace-level labels if they share
		// a key. Keys and values must be Kubernetes-conformant.
		namespace_labels?: [string]: string

		// The name of the Scope instance.
		scope!:   string
		project?: string

		// Id of the scope
		scope_id!: string

		// The client-provided identifier of the namespace.
		scope_namespace_id!: string

		// State of the namespace resource.
		state?: [...close({
			code?: string
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Google-generated UUID for this resource.
		uid?: string

		// Time the Namespace was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
