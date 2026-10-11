package res

scaleway_file_filesystem: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_file_filesystem")
	close({
		// The creation date of the filesystem
		created_at?: string

		// The ID of the filesystem, in the `{region}/{id}` format.
		id?: string

		// The name of the filesystem
		name?: string

		// The current number of attachments (mounts) that the filesystem has
		number_of_attachments?: number

		// ID of the organization. If not set, the organization ID is derived from the
		// provider configuration.
		organization_id?: string

		// The project ID the filesystem belongs to. Defaults to the provider's project ID.
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The filesystem size in GB. Minimum 25GB, maximum 50TB
		size_in_gb!: number

		// The Scaleway Resource Name (SRN) of the filesystem
		srn?: string

		// The Current status of the filesystem (e.g. creating, available, ...)
		status?: string

		// The list of tags assigned to the filesystem
		tags?: [...string]

		// The last update date of the properties of the filesystem
		updated_at?: string
	})
}
