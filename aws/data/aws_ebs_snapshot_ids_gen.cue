package data

#aws_ebs_snapshot_ids: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_snapshot_ids")
	id?: string
	ids?: [...string]
	owners?: [...string]
	restorable_by_user_ids?: [...string]
	filter?:   #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name: string
		values: [...string]
	}

	#timeouts: read?: string
}
