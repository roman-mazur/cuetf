package res

#google_cloud_ids_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_ids_endpoint")
	close({
		// Creation timestamp in RFC 3339 text format.
		create_time?: string

		// An optional description of the endpoint.
		description?: string

		// URL of the endpoint's network address to which traffic is to be
		// sent by Packet Mirroring.
		endpoint_forwarding_rule?: string

		// Internal IP address of the endpoint's network entry point.
		endpoint_ip?: string
		id?:          string

		// The location for the endpoint.
		location!: string

		// Name of the endpoint in the format
		// projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
		name!: string

		// Name of the VPC network that is connected to the IDS endpoint.
		// This can either contain the VPC network name itself (like
		// "src-net") or the full URL to the network (like
		// "projects/{project_id}/global/networks/src-net").
		network!:  string
		project?:  string
		timeouts?: #timeouts

		// The minimum alert severity level that is reported by the
		// endpoint. Possible values: ["INFORMATIONAL", "LOW", "MEDIUM",
		// "HIGH", "CRITICAL"]
		severity!: string

		// Configuration for threat IDs excluded from generating alerts.
		// Limit: 99 IDs.
		threat_exceptions?: [...string]

		// Last update timestamp in RFC 3339 text format.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
