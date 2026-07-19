package res

scaleway_key_manager_key_material: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_key_manager_key_material")
	close({
		// The ID of the key material resource (same as key_id).
		id?: string

		// ID of the key to import key material into. The key's origin must be external
		// (UUID format). Can be a plain UUID or a regional ID.
		key_id!: string

		// The key material to import. The key material is a random sequence of bytes
		// used to derive a cryptographic key. Can be provided as raw bytes or a
		// base64-encoded string (the provider will automatically normalize the input).
		key_material?: string

		// The key material to import in write-only mode. The key material is a random
		// sequence of bytes used to derive a cryptographic key. Can be provided as raw
		// bytes or a base64-encoded string (the provider will automatically normalize
		// the input). The key material will not be stored in the Terraform state.
		key_material_wo?: string

		// Version number to track changes to the write-only key material. Increment
		// this value to trigger resource recreation. Required when using
		// 'key_material_wo'.
		key_material_wo_version?: number

		// The current state of the key (enabled, disabled, pending_key_material).
		key_state?: string

		// The origin of the key (should be 'external').
		origin?: string

		// Region of the key. If not set, the region is derived from the key_id when
		// possible or from the provider configuration.
		region?: string

		// Optional salt for key derivation. A salt is random data added to key material
		// to ensure unique derived keys, even if the input is similar. It helps
		// strengthen security when the key material has low randomness (low entropy).
		// Can be provided as raw bytes or a base64-encoded string (the provider will
		// automatically normalize the input).
		salt?: string

		// Optional salt for key derivation in write-only mode. A salt is random data
		// added to key material to ensure unique derived keys. Can be provided as raw
		// bytes or a base64-encoded string (the provider will automatically normalize
		// the input). The salt will not be stored in the Terraform state.
		salt_wo?: string

		// Version number to track changes to the write-only salt. Increment this value
		// to recreate the resource with new salt. Required when using 'salt_wo'.
		salt_wo_version?: number
	})
}
