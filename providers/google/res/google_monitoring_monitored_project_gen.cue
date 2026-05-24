package res

#google_monitoring_monitored_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_monitoring_monitored_project")
	close({
		timeouts?: #timeouts

		// Output only. The time when this 'MonitoredProject' was created.
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
		id?:              string

		// Required. The resource name of the existing Metrics Scope that
		// will monitor this project. Example:
		// locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}
		metrics_scope!: string

		// Immutable. The resource name of the 'MonitoredProject'. On
		// input, the resource name includes the scoping project ID and
		// monitored project ID. On output, it contains the equivalent
		// project numbers. Example:
		// 'locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}'
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
