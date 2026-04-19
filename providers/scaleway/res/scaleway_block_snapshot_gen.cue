package res

import "list"

#scaleway_block_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_block_snapshot")
	close({
		export?: matchN(1, [#export, list.MaxItems(1) & [...#export]])

		// The snapshot name
		name?: string
		import?: matchN(1, [#import, list.MaxItems(1) & [...#import]])
		id?: string

		// The project_id you want to attach the resource to
		project_id?: string
		timeouts?:   #timeouts

		// The tags associated with the snapshot
		tags?: [...string]

		// ID of the volume from which creates a snapshot
		volume_id?: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#export: close({
		// Bucket containing qcow
		bucket!: string

		// Key of the qcow file in the specified bucket
		key!: string
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
		read?:    string
	})
}
