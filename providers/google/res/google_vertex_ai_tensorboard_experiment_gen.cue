package res

#google_vertex_ai_tensorboard_experiment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_tensorboard_experiment")
	close({
		timeouts?: #timeouts

		// Timestamp when this TensorboardExperiment was created.
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

		// Description of this TensorboardExperiment.
		description?: string

		// User provided name of this TensorboardExperiment.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels with user-defined metadata to organize your
		// TensorboardExperiment.
		//
		// Label keys and values cannot be longer than 64 characters
		// (Unicode codepoints), can only contain lowercase letters,
		// numeric
		// characters, underscores and dashes. International characters
		// are allowed.
		// No more than 64 user labels can be associated with one Dataset
		// (System
		// labels are excluded).
		//
		// See https://goo.gl/xmQnxf for more information and examples of
		// labels.
		// System reserved label keys are prefixed with
		// 'aiplatform.googleapis.com/'
		// and are immutable. The following system labels exist for each
		// Dataset:
		//
		// * 'aiplatform.googleapis.com/dataset_metadata_schema': output
		// only. Its
		// value is the metadata_schema's title.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the Tensorboard Experiment. eg us-central1
		location!: string

		// Name of the TensorboardExperiment.
		// Format:
		// 'projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}'
		name?:    string
		project?: string

		// Source of the TensorboardExperiment. Example: a custom training
		// job.
		source?: string

		// The Tensorboard instance.
		tensorboard!: string

		// The ID to use for the Tensorboard experiment, which becomes the
		// final
		// component of the Tensorboard experiment's resource name.
		//
		// This value should be 1-128 characters, and valid characters
		// are '/a-z-/'.
		tensorboard_experiment_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Timestamp when this TensorboardExperiment was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
