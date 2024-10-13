package data

#aws_kinesis_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_kinesis_stream")
	arn?: string
	closed_shards?: [...string]
	creation_timestamp?: number
	encryption_type?:    string
	id?:                 string
	kms_key_id?:         string
	name!:               string
	open_shards?: [...string]
	retention_period?: number
	shard_level_metrics?: [...string]
	status?: string
	stream_mode_details?: [...{
		stream_mode?: string
	}]
	tags?: [string]: string
}
