package res

import "list"

#google_iam_workforce_pool_provider_key: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iam_workforce_pool_provider_key")
	close({
		// The time after which the key will be permanently deleted and
		// cannot be recovered.
		// Note that the key may get purged before this time if the total
		// limit of keys per provider is exceeded.
		expire_time?: string

		// The ID to use for the key, which becomes the final component of
		// the resource name. This value must be 4-32 characters, and may
		// contain the characters [a-z0-9-].
		key_id!: string
		id?:     string

		// The location for the resource.
		location!: string

		// Identifier. The resource name of the key.
		// Format:
		// 'locations/{location}/workforcePools/{workforcePoolId}/providers/{providerId}/keys/{keyId}'
		name?: string

		// The ID of the provider.
		provider_id!: string

		// The state of the key.
		state?: string
		key_data!: matchN(1, [#key_data, list.MaxItems(1) & [_, ...] & [...#key_data]])
		timeouts?: #timeouts

		// The purpose of the key. Possible values: ["ENCRYPTION"]
		use!: string

		// The ID of the workforce pool.
		workforce_pool_id!: string
	})

	#key_data: close({
		// The format of the key.
		format?: string

		// The key data. The format of the key is represented by the
		// format field.
		key?: string

		// The specifications for the key. Possible values: ["RSA_2048",
		// "RSA_3072", "RSA_4096"]
		key_spec!: string

		// Latest timestamp when this key is valid. Attempts to use this
		// key after this time will fail.
		// Only present if the key data represents a X.509 certificate.
		//
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits.
		// Offsets other than "Z" are also accepted.
		// Examples: "2014-10-02T15:01:23Z",
		// "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		not_after_time?: string

		// Earliest timestamp when this key is valid. Attempts to use this
		// key before this time will fail.
		// Only present if the key data represents a X.509 certificate.
		//
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits.
		// Offsets other than "Z" are also accepted.
		// Examples: "2014-10-02T15:01:23Z",
		// "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		not_before_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
