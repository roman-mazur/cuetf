package data

#google_composer_user_workloads_config_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_composer_user_workloads_config_map")
	close({
		// The "data" field of Kubernetes ConfigMap, organized in
		// key-value pairs.
		// For details see:
		// https://kubernetes.io/docs/concepts/configuration/configmap/
		data?: [string]: string

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

		// Environment where the Kubernetes ConfigMap will be stored and
		// used.
		environment!: string
		id?:          string

		// Name of the Kubernetes ConfigMap.
		name!:    string
		project?: string

		// The location or Compute Engine region for the environment.
		region?: string
	})
}
