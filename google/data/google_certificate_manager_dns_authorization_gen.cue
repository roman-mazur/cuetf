package data

#google_certificate_manager_dns_authorization: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_certificate_manager_dns_authorization")
	close({
		// A human-readable description of the resource.
		description?: string

		// The structure describing the DNS Resource Record that needs to
		// be added
		// to DNS configuration for the authorization to be usable by
		// certificate.
		dns_resource_record?: [...close({
			data?: string
			name?: string
			type?: string
		})]

		// A domain which is being authorized. A DnsAuthorization resource
		// covers a
		// single domain and its wildcard, e.g. authorization for
		// "example.com" can
		// be used to issue certificates for "example.com" and
		// "*.example.com".
		domain!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of label tags associated with the DNS Authorization
		// resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The Certificate Manager location. If not specified, "global" is
		// used.
		location?: string

		// Name of the resource; provided by the client when the resource
		// is created.
		// The name must be 1-64 characters long, and match the regular
		// expression [a-zA-Z][a-zA-Z0-9_-]* which means the first
		// character must be a letter,
		// and all following characters must be a dash, underscore, letter
		// or digit.
		name!:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// type of DNS authorization. If unset during the resource
		// creation, FIXED_RECORD will
		// be used for global resources, and PER_PROJECT_RECORD will be
		// used for other locations.
		//
		// FIXED_RECORD DNS authorization uses DNS-01 validation method
		//
		// PER_PROJECT_RECORD DNS authorization allows for independent
		// management
		// of Google-managed certificates with DNS authorization across
		// multiple
		// projects. Possible values: ["FIXED_RECORD",
		// "PER_PROJECT_RECORD"]
		type?: string
	})
}
