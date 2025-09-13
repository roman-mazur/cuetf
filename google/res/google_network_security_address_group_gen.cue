package res

#google_network_security_address_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_security_address_group")
	close({
		// Capacity of the Address Group.
		capacity!: number

		// The timestamp when the resource was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// Free-text description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// List of items.
		items?: [...string]

		// Set of label tags associated with the AddressGroup resource.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location of the gateway security policy.
		// The default value is 'global'.
		location!: string

		// Name of the AddressGroup resource.
		name!: string

		// The name of the parent this address group belongs to. Format:
		// organizations/{organization_id} or projects/{project_id}.
		parent?:   string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The type of the Address Group. Possible values are "IPV4" or
		// "IPV6". Possible values: ["IPV4", "IPV6"]
		type!: string

		// The timestamp when the resource was updated.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
