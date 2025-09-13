package res

#google_certificate_manager_certificate_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_certificate_manager_certificate_map")
	close({
		// Creation timestamp of a Certificate Map. Timestamp is in
		// RFC3339 UTC "Zulu" format,
		// accurate to nanoseconds with up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// A list of target proxies that use this Certificate Map
		gclb_targets?: [...close({
			ip_configs?: [...close({
				ip_address?: string
				ports?: [...number]
			})]
			target_https_proxy?: string
			target_ssl_proxy?:   string
		})]

		// Set of labels associated with a Certificate Map resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// A user-defined name of the Certificate Map. Certificate Map
		// names must be unique
		// globally and match the pattern
		// 'projects/*/locations/*/certificateMaps/*'.
		name!:     string
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update timestamp of a Certificate Map. Timestamp is in RFC3339
		// UTC "Zulu" format,
		// accurate to nanoseconds with up to nine fractional digits.
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
