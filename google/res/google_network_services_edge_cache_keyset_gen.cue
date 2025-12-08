package res

import "list"

#google_network_services_edge_cache_keyset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_network_services_edge_cache_keyset")
	close({
		// A human-readable description of the resource.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Set of label tags associated with the EdgeCache resource.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Name of the resource; provided by the client when the resource
		// is created.
		// The name must be 1-64 characters long, and match the regular
		// expression [a-zA-Z][a-zA-Z0-9_-]* which means the first
		// character must be a letter,
		// and all following characters must be a dash, underscore, letter
		// or digit.
		name!:    string
		project?: string
		public_key?: matchN(1, [#public_key, list.MaxItems(3) & [...#public_key]])
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		validation_shared_keys?: matchN(1, [#validation_shared_keys, list.MaxItems(3) & [...#validation_shared_keys]])
	})

	#public_key: close({
		// The ID of the public key. The ID must be 1-63 characters long,
		// and comply with RFC1035.
		// The name must be 1-64 characters long, and match the regular
		// expression [a-zA-Z][a-zA-Z0-9_-]*
		// which means the first character must be a letter, and all
		// following characters must be a dash, underscore, letter or
		// digit.
		id!: string

		// Set to true to have the CDN automatically manage this public
		// key value.
		managed?: bool

		// The base64-encoded value of the Ed25519 public key. The base64
		// encoding can be padded (44 bytes) or unpadded (43 bytes).
		// Representations or encodings of the public key other than this
		// will be rejected with an error.
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#validation_shared_keys: close({
		// The name of the secret version in Secret Manager.
		//
		// The resource name of the secret version must be in the format
		// 'projects/*/secrets/*/versions/*' where the '*' values are
		// replaced by the secrets themselves.
		// The secrets must be at least 16 bytes large. The recommended
		// secret size depends on the signature algorithm you are using.
		// * If you are using HMAC-SHA1, we suggest 20-byte secrets.
		// * If you are using HMAC-SHA256, we suggest 32-byte secrets.
		// See RFC 2104, Section 3 for more details on these
		// recommendations.
		secret_version!: string
	})
}
