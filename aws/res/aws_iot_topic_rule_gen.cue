package res

import "list"

#aws_iot_topic_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_iot_topic_rule")
	close({
		arn?: string
		cloudwatch_alarm?: matchN(1, [#cloudwatch_alarm, [...#cloudwatch_alarm]])
		description?: string
		enabled!:     bool
		id?:          string
		name!:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		sql!:         string
		sql_version!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		cloudwatch_logs?: matchN(1, [#cloudwatch_logs, [...#cloudwatch_logs]])
		cloudwatch_metric?: matchN(1, [#cloudwatch_metric, [...#cloudwatch_metric]])
		dynamodb?: matchN(1, [#dynamodb, [...#dynamodb]])
		dynamodbv2?: matchN(1, [#dynamodbv2, [...#dynamodbv2]])
		elasticsearch?: matchN(1, [#elasticsearch, [...#elasticsearch]])
		error_action?: matchN(1, [#error_action, list.MaxItems(1) & [...#error_action]])
		firehose?: matchN(1, [#firehose, [...#firehose]])
		http?: matchN(1, [#http, [...#http]])
		iot_analytics?: matchN(1, [#iot_analytics, [...#iot_analytics]])
		iot_events?: matchN(1, [#iot_events, [...#iot_events]])
		kafka?: matchN(1, [#kafka, [...#kafka]])
		kinesis?: matchN(1, [#kinesis, [...#kinesis]])
		lambda?: matchN(1, [#lambda, [...#lambda]])
		republish?: matchN(1, [#republish, [...#republish]])
		s3?: matchN(1, [#s3, [...#s3]])
		sns?: matchN(1, [#sns, [...#sns]])
		sqs?: matchN(1, [#sqs, [...#sqs]])
		step_functions?: matchN(1, [#step_functions, [...#step_functions]])
		timestream?: matchN(1, [#timestream, [...#timestream]])
	})

	#cloudwatch_alarm: close({
		alarm_name!:   string
		role_arn!:     string
		state_reason!: string
		state_value!:  string
	})

	#cloudwatch_logs: close({
		batch_mode?:     bool
		log_group_name!: string
		role_arn!:       string
	})

	#cloudwatch_metric: close({
		metric_name!:      string
		metric_namespace!: string
		metric_timestamp?: string
		metric_unit!:      string
		metric_value!:     string
		role_arn!:         string
	})

	#dynamodb: close({
		hash_key_field!:  string
		hash_key_type?:   string
		hash_key_value!:  string
		operation?:       string
		payload_field?:   string
		range_key_field?: string
		range_key_type?:  string
		range_key_value?: string
		role_arn!:        string
		table_name!:      string
	})

	#dynamodbv2: close({
		put_item?: matchN(1, [_#defs."/$defs/dynamodbv2/$defs/put_item", list.MaxItems(1) & [..._#defs."/$defs/dynamodbv2/$defs/put_item"]])
		role_arn!: string
	})

	#elasticsearch: close({
		endpoint!: string
		id!:       string
		index!:    string
		role_arn!: string
		type!:     string
	})

	#error_action: close({
		cloudwatch_alarm?: matchN(1, [_#defs."/$defs/error_action/$defs/cloudwatch_alarm", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/cloudwatch_alarm"]])
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/error_action/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/cloudwatch_logs"]])
		cloudwatch_metric?: matchN(1, [_#defs."/$defs/error_action/$defs/cloudwatch_metric", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/cloudwatch_metric"]])
		dynamodb?: matchN(1, [_#defs."/$defs/error_action/$defs/dynamodb", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/dynamodb"]])
		dynamodbv2?: matchN(1, [_#defs."/$defs/error_action/$defs/dynamodbv2", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/dynamodbv2"]])
		elasticsearch?: matchN(1, [_#defs."/$defs/error_action/$defs/elasticsearch", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/elasticsearch"]])
		firehose?: matchN(1, [_#defs."/$defs/error_action/$defs/firehose", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/firehose"]])
		http?: matchN(1, [_#defs."/$defs/error_action/$defs/http", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/http"]])
		iot_analytics?: matchN(1, [_#defs."/$defs/error_action/$defs/iot_analytics", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/iot_analytics"]])
		iot_events?: matchN(1, [_#defs."/$defs/error_action/$defs/iot_events", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/iot_events"]])
		kafka?: matchN(1, [_#defs."/$defs/error_action/$defs/kafka", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/kafka"]])
		kinesis?: matchN(1, [_#defs."/$defs/error_action/$defs/kinesis", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/kinesis"]])
		lambda?: matchN(1, [_#defs."/$defs/error_action/$defs/lambda", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/lambda"]])
		republish?: matchN(1, [_#defs."/$defs/error_action/$defs/republish", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/republish"]])
		s3?: matchN(1, [_#defs."/$defs/error_action/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/s3"]])
		sns?: matchN(1, [_#defs."/$defs/error_action/$defs/sns", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/sns"]])
		sqs?: matchN(1, [_#defs."/$defs/error_action/$defs/sqs", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/sqs"]])
		step_functions?: matchN(1, [_#defs."/$defs/error_action/$defs/step_functions", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/step_functions"]])
		timestream?: matchN(1, [_#defs."/$defs/error_action/$defs/timestream", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/timestream"]])
	})

	#firehose: close({
		batch_mode?:           bool
		delivery_stream_name!: string
		role_arn!:             string
		separator?:            string
	})

	#http: close({
		http_header?: matchN(1, [_#defs."/$defs/http/$defs/http_header", [..._#defs."/$defs/http/$defs/http_header"]])
		confirmation_url?: string
		url!:              string
	})

	#iot_analytics: close({
		batch_mode?:   bool
		channel_name!: string
		role_arn!:     string
	})

	#iot_events: close({
		batch_mode?: bool
		input_name!: string
		message_id?: string
		role_arn!:   string
	})

	#kafka: close({
		header?: matchN(1, [_#defs."/$defs/kafka/$defs/header", [..._#defs."/$defs/kafka/$defs/header"]])
		client_properties!: [string]: string
		destination_arn!: string
		key?:             string
		partition?:       string
		topic!:           string
	})

	#kinesis: close({
		partition_key?: string
		role_arn!:      string
		stream_name!:   string
	})

	#lambda: close({
		function_arn!: string
	})

	#republish: close({
		qos?:      number
		role_arn!: string
		topic!:    string
	})

	#s3: close({
		bucket_name!: string
		canned_acl?:  string
		key!:         string
		role_arn!:    string
	})

	#sns: close({
		message_format?: string
		role_arn!:       string
		target_arn!:     string
	})

	#sqs: close({
		queue_url!:  string
		role_arn!:   string
		use_base64!: bool
	})

	#step_functions: close({
		execution_name_prefix?: string
		role_arn!:              string
		state_machine_name!:    string
	})

	#timestream: close({
		dimension!: matchN(1, [_#defs."/$defs/timestream/$defs/dimension", [_, ...] & [..._#defs."/$defs/timestream/$defs/dimension"]])
		timestamp?: matchN(1, [_#defs."/$defs/timestream/$defs/timestamp", list.MaxItems(1) & [..._#defs."/$defs/timestream/$defs/timestamp"]])
		database_name!: string
		role_arn!:      string
		table_name!:    string
	})

	_#defs: "/$defs/dynamodbv2/$defs/put_item": close({
		table_name!: string
	})

	_#defs: "/$defs/error_action/$defs/cloudwatch_alarm": close({
		alarm_name!:   string
		role_arn!:     string
		state_reason!: string
		state_value!:  string
	})

	_#defs: "/$defs/error_action/$defs/cloudwatch_logs": close({
		batch_mode?:     bool
		log_group_name!: string
		role_arn!:       string
	})

	_#defs: "/$defs/error_action/$defs/cloudwatch_metric": close({
		metric_name!:      string
		metric_namespace!: string
		metric_timestamp?: string
		metric_unit!:      string
		metric_value!:     string
		role_arn!:         string
	})

	_#defs: "/$defs/error_action/$defs/dynamodb": close({
		hash_key_field!:  string
		hash_key_type?:   string
		hash_key_value!:  string
		operation?:       string
		payload_field?:   string
		range_key_field?: string
		range_key_type?:  string
		range_key_value?: string
		role_arn!:        string
		table_name!:      string
	})

	_#defs: "/$defs/error_action/$defs/dynamodbv2": close({
		put_item?: matchN(1, [_#defs."/$defs/error_action/$defs/dynamodbv2/$defs/put_item", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/dynamodbv2/$defs/put_item"]])
		role_arn!: string
	})

	_#defs: "/$defs/error_action/$defs/dynamodbv2/$defs/put_item": close({
		table_name!: string
	})

	_#defs: "/$defs/error_action/$defs/elasticsearch": close({
		endpoint!: string
		id!:       string
		index!:    string
		role_arn!: string
		type!:     string
	})

	_#defs: "/$defs/error_action/$defs/firehose": close({
		batch_mode?:           bool
		delivery_stream_name!: string
		role_arn!:             string
		separator?:            string
	})

	_#defs: "/$defs/error_action/$defs/http": close({
		http_header?: matchN(1, [_#defs."/$defs/error_action/$defs/http/$defs/http_header", [..._#defs."/$defs/error_action/$defs/http/$defs/http_header"]])
		confirmation_url?: string
		url!:              string
	})

	_#defs: "/$defs/error_action/$defs/http/$defs/http_header": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/error_action/$defs/iot_analytics": close({
		batch_mode?:   bool
		channel_name!: string
		role_arn!:     string
	})

	_#defs: "/$defs/error_action/$defs/iot_events": close({
		batch_mode?: bool
		input_name!: string
		message_id?: string
		role_arn!:   string
	})

	_#defs: "/$defs/error_action/$defs/kafka": close({
		header?: matchN(1, [_#defs."/$defs/error_action/$defs/kafka/$defs/header", [..._#defs."/$defs/error_action/$defs/kafka/$defs/header"]])
		client_properties!: [string]: string
		destination_arn!: string
		key?:             string
		partition?:       string
		topic!:           string
	})

	_#defs: "/$defs/error_action/$defs/kafka/$defs/header": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/error_action/$defs/kinesis": close({
		partition_key?: string
		role_arn!:      string
		stream_name!:   string
	})

	_#defs: "/$defs/error_action/$defs/lambda": close({
		function_arn!: string
	})

	_#defs: "/$defs/error_action/$defs/republish": close({
		qos?:      number
		role_arn!: string
		topic!:    string
	})

	_#defs: "/$defs/error_action/$defs/s3": close({
		bucket_name!: string
		canned_acl?:  string
		key!:         string
		role_arn!:    string
	})

	_#defs: "/$defs/error_action/$defs/sns": close({
		message_format?: string
		role_arn!:       string
		target_arn!:     string
	})

	_#defs: "/$defs/error_action/$defs/sqs": close({
		queue_url!:  string
		role_arn!:   string
		use_base64!: bool
	})

	_#defs: "/$defs/error_action/$defs/step_functions": close({
		execution_name_prefix?: string
		role_arn!:              string
		state_machine_name!:    string
	})

	_#defs: "/$defs/error_action/$defs/timestream": close({
		dimension!: matchN(1, [_#defs."/$defs/error_action/$defs/timestream/$defs/dimension", [_, ...] & [..._#defs."/$defs/error_action/$defs/timestream/$defs/dimension"]])
		timestamp?: matchN(1, [_#defs."/$defs/error_action/$defs/timestream/$defs/timestamp", list.MaxItems(1) & [..._#defs."/$defs/error_action/$defs/timestream/$defs/timestamp"]])
		database_name!: string
		role_arn!:      string
		table_name!:    string
	})

	_#defs: "/$defs/error_action/$defs/timestream/$defs/dimension": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/error_action/$defs/timestream/$defs/timestamp": close({
		unit!:  string
		value!: string
	})

	_#defs: "/$defs/http/$defs/http_header": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/kafka/$defs/header": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/timestream/$defs/dimension": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/timestream/$defs/timestamp": close({
		unit!:  string
		value!: string
	})
}
