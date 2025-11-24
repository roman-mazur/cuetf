package res

import "list"

#google_dataproc_gdc_application_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_gdc_application_environment")
	close({
		// The annotations to associate with this application environment.
		// Annotations may be used to store client information, but are
		// not used by the server.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The id of the application environment
		application_environment_id?: string

		// The timestamp when the resource was created.
		create_time?: string

		// User-provided human-readable name to be used in user
		// interfaces.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The labels to associate with this application environment.
		// Labels may be used for filtering and billing tracking.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the application environment
		location!: string

		// Identifier. The name of the application environment. Format:
		// projects/{project}/locations/{location}/serviceInstances/{service_instance}/applicationEnvironments/{application_environment_id}
		name?: string

		// The name of the namespace in which to create this
		// ApplicationEnvironment. This namespace must already exist in
		// the cluster
		namespace?: string
		spark_application_environment_config?: matchN(1, [#spark_application_environment_config, list.MaxItems(1) & [...#spark_application_environment_config]])
		timeouts?: #timeouts
		project?:  string

		// The id of the service instance to which this application
		// environment belongs.
		serviceinstance!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// System generated unique identifier for this application
		// environment, formatted as UUID4.
		uid?: string

		// The timestamp when the resource was most recently updated.
		update_time?: string
	})

	#spark_application_environment_config: close({
		// A map of default Spark properties to apply to workloads in this
		// application environment. These defaults may be overridden by
		// per-application properties.
		default_properties?: [string]: string

		// The default Dataproc version to use for applications submitted
		// to this application environment
		default_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
