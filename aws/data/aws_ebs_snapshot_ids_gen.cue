package data

#aws_ebs_snapshot_ids: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ebs_snapshot_ids")
	close({
		id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		ids?: [...string]
		owners?: [...string]
		region?: string
		restorable_by_user_ids?: [...string]
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
