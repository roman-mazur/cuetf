package res

import "list"

#google_vmwareengine_datastore: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vmwareengine_datastore")
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

		// The state of the Datastore.
		// Possible values:
		// CREATING
		// ACTIVE
		// UPDATING
		// DELETING
		// SOFT_DELETING
		// SOFT_DELETED
		state?:   string
		project?: string
		nfs_datastore!: matchN(1, [#nfs_datastore, list.MaxItems(1) & [_, ...] & [...#nfs_datastore]])
		timeouts?: #timeouts

		// System-generated unique identifier for the resource.
		uid?: string

		// Last update time of this resource.
		update_time?: string
	})

	#nfs_datastore: close({
		google_file_service?: matchN(1, [_#defs."/$defs/nfs_datastore/$defs/google_file_service", list.MaxItems(1) & [..._#defs."/$defs/nfs_datastore/$defs/google_file_service"]])
		third_party_file_service?: matchN(1, [_#defs."/$defs/nfs_datastore/$defs/third_party_file_service", list.MaxItems(1) & [..._#defs."/$defs/nfs_datastore/$defs/third_party_file_service"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/nfs_datastore/$defs/google_file_service": close({
		// Google filestore instance resource name
		// e.g.
		// projects/my-project/locations/me-west1-b/instances/my-instance
		filestore_instance?: string

		// Google netapp volume resource name
		// e.g. projects/my-project/locations/me-west1-b/volumes/my-volume
		netapp_volume?: string
	})

	_#defs: "/$defs/nfs_datastore/$defs/third_party_file_service": close({
		// Required
		// Mount Folder name
		file_share!: string

		// Required to identify vpc peering used for NFS access
		// network name of NFS's vpc
		// e.g. projects/project-id/global/networks/my-network_id
		network!: string

		// Server IP addresses of the NFS file service.
		// NFS v3, provide a single IP address or DNS name.
		// Multiple servers can be supported in future when NFS 4.1
		// protocol support
		// is enabled.
		servers!: [...string]
	})
}
