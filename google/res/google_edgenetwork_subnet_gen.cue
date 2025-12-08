package res

#google_edgenetwork_subnet: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_edgenetwork_subnet")
	close({
		// The time when the subnet was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: '2014-10-02T15:01:23Z' and
		// '2014-10-02T15:01:23.045123456Z'.
		create_time?: string

		// A free-text description of the resource. Max length 1024
		// characters.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ranges of ipv4 addresses that are owned by this subnetwork,
		// in CIDR format.
		ipv4_cidr?: [...string]
		id?: string

		// The ranges of ipv6 addresses that are owned by this subnetwork,
		// in CIDR format.
		ipv6_cidr?: [...string]

		// Labels associated with this resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The Google Cloud region to which the target Distributed Cloud
		// Edge zone belongs.
		location!: string

		// The canonical name of this resource, with format
		// 'projects/{{project}}/locations/{{location}}/zones/{{zone}}/subnets/{{subnet_id}}'
		name?: string

		// The ID of the network to which this router belongs.
		// Must be of the form:
		// 'projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}'
		network!: string

		// Current stage of the resource to the device by config push.
		state?:    string
		timeouts?: #timeouts
		project?:  string

		// A unique ID that identifies this subnet.
		subnet_id!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time when the subnet was last updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine
		// fractional digits. Examples: '2014-10-02T15:01:23Z' and
		// '2014-10-02T15:01:23.045123456Z'.
		update_time?: string

		// VLAN ID for this subnetwork. If not specified, one is assigned
		// automatically.
		vlan_id?: number

		// The name of the target Distributed Cloud Edge zone.
		zone!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
