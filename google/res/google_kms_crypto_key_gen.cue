package res

import "list"

#google_kms_crypto_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_kms_crypto_key")
	close({
		// The resource name of the backend environment associated with
		// all CryptoKeyVersions within this CryptoKey.
		// The resource name is in the format
		// "projects/*/locations/*/ekmConnections/*" and only applies to
		// "EXTERNAL_VPC" keys.
		crypto_key_backend?: string

		// The period of time that versions of this key spend in the
		// DESTROY_SCHEDULED state before transitioning to DESTROYED.
		// If not specified at creation time, the default duration is 30
		// days.
		destroy_scheduled_duration?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether this key may contain imported versions only.
		import_only?: bool
		id?:          string

		// The KeyRing that this key belongs to.
		// Format:
		// ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''.
		key_ring!: string

		// Labels with user-defined metadata to apply to this resource.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The resource name for the CryptoKey.
		name!: string

		// A copy of the primary CryptoKeyVersion that will be used by
		// cryptoKeys.encrypt when this CryptoKey is given in
		// EncryptRequest.name.
		// Keys with purpose ENCRYPT_DECRYPT may have a primary. For other
		// keys, this field will be unset.
		primary?: [...close({
			name?:  string
			state?: string
		})]
		timeouts?: #timeouts

		// The immutable purpose of this CryptoKey. See the
		// [purpose
		// reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)
		// for possible inputs.
		// Default value is "ENCRYPT_DECRYPT".
		purpose?: string

		// Every time this period passes, generate a new CryptoKeyVersion
		// and set it as the primary.
		// The first rotation will take place after the specified period.
		// The rotation period has
		// the format of a decimal number with up to 9 fractional digits,
		// followed by the
		// letter 's' (seconds). It must be greater than a day (ie,
		// 86400).
		rotation_period?: string
		version_template?: matchN(1, [#version_template, list.MaxItems(1) & [...#version_template]])

		// If set to true, the request will create a CryptoKey without any
		// CryptoKeyVersions.
		// You must use the 'google_kms_crypto_key_version' resource to
		// create a new CryptoKeyVersion
		// or 'google_kms_key_ring_import_job' resource to import the
		// CryptoKeyVersion.
		// This field is only applicable during initial CryptoKey
		// creation.
		skip_initial_version_creation?: bool

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#version_template: close({
		// The algorithm to use when creating a version based on this
		// template.
		// See the [algorithm
		// reference](https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm)
		// for possible inputs.
		algorithm!: string

		// The protection level to use when creating a version based on
		// this template. Possible values include "SOFTWARE", "HSM",
		// "EXTERNAL", "EXTERNAL_VPC". Defaults to "SOFTWARE".
		protection_level?: string
	})
}
