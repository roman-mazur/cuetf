package data

#google_monitoring_cluster_istio_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_monitoring_cluster_istio_service")
	close({
		// The name of the Kubernetes cluster in which this Istio service
		// is defined.
		// Corresponds to the clusterName resource label in k8s_cluster
		// resources.
		cluster_name!: string

		// Name used for UI elements listing this Service.
		display_name?: string

		// The location of the Kubernetes cluster in which this Istio
		// service is defined.
		// Corresponds to the location resource label in k8s_cluster
		// resources.
		location!: string
		id?:       string

		// The full resource name for this service. The syntax is:
		// projects/[PROJECT_ID]/services/[SERVICE_ID].
		name?: string

		// An optional service ID to use. If not given, the server will
		// generate a
		// service ID.
		service_id?: string
		project?:    string

		// The name of the Istio service underlying this service.
		// Corresponds to the destination_service_name metric label in
		// Istio metrics.
		service_name!: string

		// The namespace of the Istio service underlying this service.
		// Corresponds to the destination_service_namespace metric label
		// in Istio metrics.
		service_namespace!: string

		// Configuration for how to query telemetry on a Service.
		telemetry?: [...close({
			resource_name?: string
		})]

		// Labels which have been used to annotate the service. Label keys
		// must start
		// with a letter. Label keys and values may contain lowercase
		// letters,
		// numbers, underscores, and dashes. Label keys and values have a
		// maximum
		// length of 63 characters, and must be less than 128 bytes in
		// size. Up to 64
		// label entries may be stored. For labels which do not have a
		// semantic value,
		// the empty string may be supplied for the label value.
		user_labels?: [string]: string
	})
}
