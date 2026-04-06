package data

#scaleway_secret_version: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_secret_version")
	close({
		// Date and time of secret version's creation (RFC 3339 format)
		created_at?: string

		// The payload of the secret version
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

		// ID of organization the resource is associated to.
		organization_id?: string

		// The ID of the project to filter the secret version
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The revision of secret version.
		revision?: string

		// The ID of the secret
		secret_id?: string

		// The Name of the secret
		secret_name?: string

		// Status of the secret version
		status?: string

		// Date and time of secret version's creation (RFC 3339 format)
		updated_at?: string
	})
}
