package data

#google_vmwareengine_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_network")
	close({
		// Creation time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// User-provided description for this VMware Engine network.
		description?: string

		// Checksum that may be sent on update and delete requests to
		// ensure that the user-provided value is up to date befor
		// The server computes checksums based on the value of other
		// fields in the request.
		etag?: string

		// The location where the VMwareEngineNetwork should reside.
		location!: string
		id?:       string

		// The ID of the VMwareEngineNetwork.
		name!: string

		// State of the VMware Engine network.
		state?:   string
		project?: string

		// VMware Engine network type. Possible values: ["LEGACY",
		// "STANDARD"]
		type?: string

		// System-generated unique identifier for the resource.
		uid?: string

		// Last update time of this resource.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string

		// VMware Engine service VPC networks that provide connectivity
		// from a private cloud to customer projects,
		// the internet, and other Google Cloud services.
		vpc_networks?: [...close({
			network?: string
			type?:    string
		})]
	})
}
