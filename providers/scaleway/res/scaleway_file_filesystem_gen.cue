package res

#scaleway_file_filesystem: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_file_filesystem")
	close({
		// The creation date of the filesystem
		created_at?: string

		// The name of the filesystem
		name?:     string
		id?:       string
		timeouts?: #timeouts

		// The current number of attachments (mounts) that the filesystem
		// has
		number_of_attachments?: number

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The Filesystem size_in_gb in bytes, with a granularity of 100
		// GB (10^11 bytes). Must be compliant with the minimum (100 GB)
		// and maximum (10 TB) allowed size_in_gb.
		size_in_gb!: number

		// The Current status of the filesystem (e.g. creating, available,
		// ...)
		status?: string

		// The list of tags assigned to the filesystem
		tags?: [...string]

		// The last update date of the properties of the filesystem
		updated_at?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
