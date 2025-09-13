package res

import "list"

#google_ml_engine_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_ml_engine_model")
	close({
		// The description specified for the model when it was created.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// One or more labels that you can add, to organize your models.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The name specified for the model.
		name!: string

		// If true, online prediction nodes send stderr and stdout streams
		// to Stackdriver Logging
		online_prediction_console_logging?: bool

		// If true, online prediction access logs are sent to StackDriver
		// Logging.
		online_prediction_logging?: bool

		// The list of regions where the model is going to be deployed.
		// Currently only one region per model is supported
		regions?: [...string]
		default_version?: matchN(1, [#default_version, list.MaxItems(1) & [...#default_version]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#default_version: close({
		// The name specified for the version when it was created.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
