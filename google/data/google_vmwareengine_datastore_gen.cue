package data

#google_vmwareengine_datastore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_vmwareengine_datastore")
	close({
		// Clusters to which the datastore is attached.
		clusters?: [...string]

		// Creation time of this resource.
		create_time?: string

		// User-provided description for this datastore
		description?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		id?:       string

		// The user-provided identifier of the datastore to be created.
		// This identifier must be unique among each 'Datastore' within
		// the parent
		// and becomes the final token in the name URI.
		// The identifier must meet the following requirements:
		//
		// * Only contains 1-63 alphanumeric characters and hyphens
		// * Begins with an alphabetical character
		// * Ends with a non-hyphen character
		// * Not formatted as a UUID
		// * Complies with [RFC
		// 1034](https://datatracker.ietf.org/doc/html/rfc1034)
		// (section 3.5)
		name!: string

		// The NFS datastore configuration.
		nfs_datastore?: [...close({
			google_file_service?: [...close({
				filestore_instance?: string
				netapp_volume?:      string
			})]
			third_party_file_service?: [...close({
				file_share?: string
				network?:    string
				servers?: [...string]
			})]
		})]

		// The state of the Datastore.
		// Possible values:
		// CREATING
		// ACTIVE
		// UPDATING
		// DELETING
		// SOFT_DELETING
		// SOFT_DELETED
		state?: string

		// System-generated unique identifier for the resource.
		uid?:     string
		project?: string

		// Last update time of this resource.
		update_time?: string
	})
}
