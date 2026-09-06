package res

google_network_management_network_monitoring_provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_management_network_monitoring_provider")
	close({
		timeouts?: #timeouts

		// The time the Network Monitoring Provider was created.
		create_time?: string

		// The deletion policy for the Network Monitoring Provider.
		// Setting 'deletion_policy = "FORCE"' forces the deletion of all nested resources
		// (MonitoringPoints, NetworkPaths, WebPaths) belonging to this provider on deletion.
		deletion_policy?: string

		// The list of error messages detected for the Network Monitoring Provider.
		errors?: [...string]
		id?: string

		// The location of the Network Monitoring Provider. Currently only 'global' is supported.
		location!: string

		// The full resource name of the Network Monitoring Provider, in the format
		// 'projects/{project}/locations/{location}/networkMonitoringProviders/{id}'.
		name?: string

		// The ID to use for the Network Monitoring Provider. This will become the last
		// component of the provider's resource name.
		network_monitoring_provider_id!: string

		// The type of the Network Monitoring Provider.
		// Currently only 'EXTERNAL' is supported.
		provider_type!: string
		project?:       string

		// Link to the provider's UI.
		provider_uri?: string

		// The current state of the Network Monitoring Provider.
		state?: string

		// The time the Network Monitoring Provider was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
