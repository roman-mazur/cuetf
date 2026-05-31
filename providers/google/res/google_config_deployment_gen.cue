package res

import "list"

#google_config_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_config_deployment")
	close({
		terraform_blueprint!: matchN(1, [#terraform_blueprint, list.MaxItems(1) & [_, ...] & [...#terraform_blueprint]])
		timeouts?: #timeouts

		// Optional. Arbitrary key-value metadata storage.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Location for Cloud Build logs and artifacts.
		artifacts_gcs_bucket?: string

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

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If true, deletes the deployment and its nested resources.
		force_destroy?: bool
		id?:            string

		// If true, attempts to automatically import resources on 409
		// conflict.
		import_existing_resources?: bool

		// Optional. User-defined metadata for the deployment.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Output only. Revision name most recently applied.
		latest_revision?: string

		// The location for the resource
		location!: string

		// The user-specified ID of the deployment.
		name!:    string
		project?: string

		// Controls quota checks. Possible values: ["ENABLED", "ENFORCED"]
		quota_validation?: string

		// Required. User-specified Service Account (SA) credentials to be
		// used when actuating resources.
		service_account!: string

		// Output only. Current state of the deployment.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Optional constraint on the Terraform version.
		tf_version_constraint?: string

		// Custom Cloud Build worker pool resource name.
		worker_pool?: string
	})

	#terraform_blueprint: close({
		git_source?: matchN(1, [_#defs."/$defs/terraform_blueprint/$defs/git_source", list.MaxItems(1) & [..._#defs."/$defs/terraform_blueprint/$defs/git_source"]])
		input_values?: matchN(1, [_#defs."/$defs/terraform_blueprint/$defs/input_values", [..._#defs."/$defs/terraform_blueprint/$defs/input_values"]])

		// URI of a GCS object containing the zipped Terraform blueprint.
		gcs_source?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/terraform_blueprint/$defs/git_source": close({
		// Subdirectory within the repo.
		directory?: string

		// Git reference (branch or tag).
		ref?: string

		// Repository URL.
		repo!: string
	})

	_#defs: "/$defs/terraform_blueprint/$defs/input_values": close({
		// The value of the variable.
		input_value!:   string
		variable_name!: string
	})
}
