package res

#google_network_security_dns_threat_detector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_security_dns_threat_detector")
	close({
		// The timestamp when the resource was created.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z"
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// List of networks that are excluded from detection. Format:
		// projects/{project}/global/networks/{name}.
		excluded_networks?: [...string]

		// Set of label tags associated with the DNS Threat Detector
		// resource.
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

		// The location of the DNS Threat Detector. The only supported
		// value is 'global'.
		location?: string

		// Name of the DnsThreatDetector resource.
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		timeouts?: #timeouts
		project?:  string

		// DNS Threat Detection provider. The only supported value is
		// 'INFOBLOX'.
		threat_detector_provider?: string

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
