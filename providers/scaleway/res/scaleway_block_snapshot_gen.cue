package res

scaleway_block_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_block_snapshot")
	close({
		export?: matchN(1, [#export, [...#export]])
		import?: matchN(1, [#import, [...#import]])

		// The ID of the snapshot
		id?: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// The snapshot name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The Scaleway Resource Name (SRN) of the snapshot
		srn?: string

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
}
