package res

import "list"

#google_kms_crypto_key_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_kms_crypto_key_version")
	close({
		// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion
		// supports.
		algorithm?: string

		// Statement that was generated and signed by the HSM at key
		// creation time. Use this statement to verify attributes of the
		// key as stored on the HSM, independently of Google.
		// Only provided for key versions with protectionLevel HSM.
		attestation?: [...close({
			cert_chains?: [...close({
				cavium_certs?: [...string]
				google_card_certs?: [...string]
				google_partition_certs?: [...string]
			})]
			content?: string
			external_protection_level_options?: [...close({
				ekm_connection_key_path?: string
				external_key_uri?:        string
			})]
			format?: string
		})]

		// The name of the cryptoKey associated with the
		// CryptoKeyVersions.
		// Format:
		// ''projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}''
		crypto_key!: string

		// The time this CryptoKeyVersion key material was generated
		generate_time?: string
		id?:            string

		// The resource name for this CryptoKeyVersion.
		name?: string
		external_protection_level_options?: matchN(1, [#external_protection_level_options, list.MaxItems(1) & [...#external_protection_level_options]])
		timeouts?: #timeouts

		// The ProtectionLevel describing how crypto operations are
		// performed with this CryptoKeyVersion.
		protection_level?: string

		// The current state of the CryptoKeyVersion. Note: you can only
		// specify this field to manually 'ENABLE' or 'DISABLE' the
		// CryptoKeyVersion,
		// otherwise the value of this field is always retrieved
		// automatically. Possible values: ["PENDING_GENERATION",
		// "ENABLED", "DISABLED", "DESTROYED", "DESTROY_SCHEDULED",
		// "PENDING_IMPORT", "IMPORT_FAILED"]
		state?: string
	})

	#external_protection_level_options: close({
		// The path to the external key material on the EKM when using
		// EkmConnection e.g., "v0/my/key". Set this field instead of
		// externalKeyUri when using an EkmConnection.
		ekm_connection_key_path?: string

		// The URI for an external resource that this CryptoKeyVersion
		// represents.
		external_key_uri?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
