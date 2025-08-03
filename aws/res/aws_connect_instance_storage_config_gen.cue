package res

import "list"

#aws_connect_instance_storage_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_instance_storage_config")
	close({
		association_id?: string
		storage_config?: matchN(1, [#storage_config, list.MaxItems(1) & [_, ...] & [...#storage_config]])
		id?:            string
		instance_id!:   string
		region?:        string
		resource_type!: string
	})

	#storage_config: close({
		storage_type!: string
		kinesis_firehose_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/kinesis_firehose_config", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/kinesis_firehose_config"]])
		kinesis_stream_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/kinesis_stream_config", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/kinesis_stream_config"]])
		kinesis_video_stream_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/kinesis_video_stream_config", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/kinesis_video_stream_config"]])
		s3_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/s3_config", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/s3_config"]])
	})

	_#defs: "/$defs/storage_config/$defs/kinesis_firehose_config": close({
		firehose_arn!: string
	})

	_#defs: "/$defs/storage_config/$defs/kinesis_stream_config": close({
		stream_arn!: string
	})

	_#defs: "/$defs/storage_config/$defs/kinesis_video_stream_config": close({
		prefix!:                 string
		retention_period_hours!: number
		encryption_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/kinesis_video_stream_config/$defs/encryption_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage_config/$defs/kinesis_video_stream_config/$defs/encryption_config"]])
	})

	_#defs: "/$defs/storage_config/$defs/kinesis_video_stream_config/$defs/encryption_config": close({
		encryption_type!: string
		key_id!:          string
	})

	_#defs: "/$defs/storage_config/$defs/s3_config": close({
		bucket_name!:   string
		bucket_prefix!: string
		encryption_config?: matchN(1, [_#defs."/$defs/storage_config/$defs/s3_config/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/storage_config/$defs/s3_config/$defs/encryption_config"]])
	})

	_#defs: "/$defs/storage_config/$defs/s3_config/$defs/encryption_config": close({
		encryption_type!: string
		key_id!:          string
	})
}
