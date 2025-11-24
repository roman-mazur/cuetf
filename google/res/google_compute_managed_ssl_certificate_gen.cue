package res

import "list"

#google_compute_managed_ssl_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_managed_ssl_certificate")
	close({
		// The unique identifier for the resource.
		certificate_id?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Expire time of the certificate in RFC3339 text format.
		expire_time?: string
		id?:          string

		// Name of the resource. Provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		//
		// These are in the same namespace as the managed SSL
		// certificates.
		name?:      string
		project?:   string
		self_link?: string
		managed?: matchN(1, [#managed, list.MaxItems(1) & [...#managed]])

		// Domains associated with the certificate via Subject Alternative
		// Name.
		subject_alternative_names?: [...string]
		timeouts?: #timeouts

		// Enum field whose value is always 'MANAGED' - used to signal to
		// the API
		// which type this is. Default value: "MANAGED" Possible values:
		// ["MANAGED"]
		type?: string
	})

	#managed: close({
		// Domains for which a managed SSL certificate will be valid.
		// Currently,
		// there can be up to 100 domains in this list.
		domains!: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
