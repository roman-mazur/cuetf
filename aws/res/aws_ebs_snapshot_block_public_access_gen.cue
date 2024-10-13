package res

#aws_ebs_snapshot_block_public_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ebs_snapshot_block_public_access")
	id?:    string
	state!: string
}
