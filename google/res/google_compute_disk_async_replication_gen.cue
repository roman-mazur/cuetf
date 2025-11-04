package res

import "list"

#google_compute_disk_async_replication: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_disk_async_replication")
	close({
		secondary_disk!: matchN(1, [#secondary_disk, list.MaxItems(1) & [_, ...] & [...#secondary_disk]])
		timeouts?: #timeouts
		id?:       string

		// Primary disk for asynchronous replication.
		primary_disk!: string
	})

	#secondary_disk: close({
		// Secondary disk for asynchronous replication.
		disk!: string

		// Output-only. Status of replication on the secondary disk.
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
