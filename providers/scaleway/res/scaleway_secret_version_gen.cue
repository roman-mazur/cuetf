package res

#scaleway_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_secret_version")
	close({
		timeouts?: #timeouts

		// Date and time of secret version's creation (RFC 3339 format)
		created_at?: string

		// The raw data payload of the secret version. Must not exceed
		// 64KiB in size (e.g. `my-secret-version-payload`). Only one of
		// `data` or `data_wo` should be specified.
		data?: string

		// The raw data payload of your secret version in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Must not exceed 64KiB in size (e.g.
		// `my-secret-version-payload`). Only one of `data` or `data_wo`
		// should be specified. `data_wo` will not be set in the
		// Terraform state. To update the `data_wo`, you must also update
		// the `data_wo_version`.
		data_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// data. To update the `data_wo`, you must also update the
		// `data_wo_version`.
		data_wo_version?: number

		// Description of the secret version
		description?: string
		id?:          string

		// The region you want to attach the resource to
		region?: string

		// The revision of secret version.
		revision?: string

		// The secret ID associated with this version
		secret_id!: string

		// Status of the secret version
		status?: string

		// Date and time of secret version's creation (RFC 3339 format)
		updated_at?: string
	})

	#timeouts: close({
		default?: string
	})
}
