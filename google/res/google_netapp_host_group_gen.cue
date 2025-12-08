package res

#google_netapp_host_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_netapp_host_group")
	close({
		// Create time of the host group. A timestamp in RFC3339 UTC
		// "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
		create_time?: string

		// An optional description of this resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The list of hosts associated with the host group
		hosts!: [...string]
		id?: string

		// Labels as key value pairs. Example: '{ "owner": "Bob",
		// "department": "finance", "purpose": "testing" }'.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Location (region) of the Host Group.
		location!: string

		// The resource name of the Host Group. Needs to be unique per
		// location.
		name!: string

		// The OS type of the host group. It indicates the type of
		// operating system
		// used by all of the hosts in the HostGroup. All hosts in a
		// HostGroup must be
		// of the same OS type. This can be set only when creating a
		// HostGroup. Possible values: ["LINUX", "WINDOWS", "ESXI"]
		os_type!:  string
		timeouts?: #timeouts

		// The state of the Host Group.
		state?:   string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Type of the host group. Possible values: ["ISCSI_INITIATOR"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
