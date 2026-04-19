package res

import "list"

#scaleway_instance_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_instance_snapshot")
	close({
		import?: matchN(1, [#import, list.MaxItems(1) & [...#import]])
		timeouts?: #timeouts

		// The date and time of the creation of the snapshot
		created_at?: string
		id?:         string

		// The name of the snapshot
		name?: string

		// The organization_id you want to attach the resource to
		organization_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The size of the snapshot in gigabyte
		size_in_gb?: number

		// The tags associated with the snapshot
		tags?: [...string]

		// The snapshot's volume type
		type?: string

		// ID of the volume to take a snapshot from
		volume_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#import: close({
		// Bucket containing qcow
		bucket!: string

		// Key of the qcow file in the specified bucket
		key!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
	})
}
