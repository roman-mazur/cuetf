package res

#google_certificate_manager_certificate_map_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_certificate_manager_certificate_map_entry")
	close({
		// A set of Certificates defines for the given hostname.
		// There can be defined up to fifteen certificates in each
		// Certificate Map Entry.
		// Each certificate must match pattern
		// projects/*/locations/*/certificates/*.
		certificates!: [...string]

		// Creation timestamp of a Certificate Map Entry. Timestamp in
		// RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A Hostname (FQDN, e.g. example.com) or a wildcard hostname
		// expression (*.example.com)
		// for a set of hostnames with common suffix. Used as Server Name
		// Indication (SNI) for
		// selecting a proper certificate.
		hostname?: string
		id?:       string

		// Set of labels associated with a Certificate Map Entry.
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// A map entry that is inputted into the certificate map
		map!: string

		// A predefined matcher for particular cases, other than SNI
		// selection
		matcher?:  string
		timeouts?: #timeouts

		// A user-defined name of the Certificate Map Entry. Certificate
		// Map Entry
		// names must be unique globally and match pattern
		// 'projects/*/locations/*/certificateMaps/*/certificateMapEntries/*'
		name!:    string
		project?: string

		// A serving state of this Certificate Map Entry.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update timestamp of a Certificate Map Entry. Timestamp in
		// RFC3339 UTC "Zulu" format,
		// with nanosecond resolution and up to nine fractional digits.
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
