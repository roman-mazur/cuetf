package res

#google_healthcare_consent_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_healthcare_consent_store")
	close({
		// Identifies the dataset addressed by this request. Must be in
		// the format
		// 'projects/{project}/locations/{location}/datasets/{dataset}'
		dataset!: string

		// Default time to live for consents in this store. Must be at
		// least 24 hours. Updating this field will not affect the
		// expiration time of existing consents.
		//
		// A duration in seconds with up to nine fractional digits,
		// terminated by 's'. Example: "3.5s".
		default_consent_ttl?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// If true, [consents.patch]
		// [google.cloud.healthcare.v1.consent.UpdateConsent] creates the
		// consent if it does not already exist.
		enable_consent_create_on_update?: bool
		id?:                              string

		// User-supplied key-value pairs used to organize Consent stores.
		//
		// Label keys must be between 1 and 63 characters long, have a
		// UTF-8 encoding of maximum 128 bytes, and must
		// conform to the following PCRE regular expression:
		// '[\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}'
		//
		// Label values are optional, must be between 1 and 63 characters
		// long, have a UTF-8 encoding of maximum 128
		// bytes, and must conform to the following PCRE regular
		// expression: '[\p{Ll}\p{Lo}\p{N}_-]{0,63}'
		//
		// No more than 64 labels can be associated with a given store.
		//
		// An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of this ConsentStore, for example:
		// "consent1"
		name!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
