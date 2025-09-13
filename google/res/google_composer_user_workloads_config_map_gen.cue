package res

#google_composer_user_workloads_config_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_composer_user_workloads_config_map")
	close({
		// The "data" field of Kubernetes ConfigMap, organized in
		// key-value pairs.
		// For details see:
		// https://kubernetes.io/docs/concepts/configuration/configmap/
		data?: [string]: string

		// Environment where the Kubernetes ConfigMap will be stored and
		// used.
		environment!: string
		id?:          string

		// Name of the Kubernetes ConfigMap.
		name!:     string
		project?:  string
		timeouts?: #timeouts

		// The location or Compute Engine region for the environment.
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
