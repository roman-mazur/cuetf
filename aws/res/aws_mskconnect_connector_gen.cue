package res

import "list"

#aws_mskconnect_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_mskconnect_connector")
	close({
		arn?: string
		connector_configuration!: [string]: string
		description?:          string
		id?:                   string
		kafkaconnect_version!: string
		name!:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                     string
		service_execution_role_arn!: string
		tags?: [string]: string
		capacity!: matchN(1, [#capacity, list.MaxItems(1) & [_, ...] & [...#capacity]])
		kafka_cluster!: matchN(1, [#kafka_cluster, list.MaxItems(1) & [_, ...] & [...#kafka_cluster]])
		tags_all?: [string]: string
		version?: string
		kafka_cluster_client_authentication!: matchN(1, [#kafka_cluster_client_authentication, list.MaxItems(1) & [_, ...] & [...#kafka_cluster_client_authentication]])
		kafka_cluster_encryption_in_transit!: matchN(1, [#kafka_cluster_encryption_in_transit, list.MaxItems(1) & [_, ...] & [...#kafka_cluster_encryption_in_transit]])
		log_delivery?: matchN(1, [#log_delivery, list.MaxItems(1) & [...#log_delivery]])
		plugin!: matchN(1, [#plugin, [_, ...] & [...#plugin]])
		timeouts?: #timeouts
		worker_configuration?: matchN(1, [#worker_configuration, list.MaxItems(1) & [...#worker_configuration]])
	})

	#capacity: close({
		autoscaling?: matchN(1, [_#defs."/$defs/capacity/$defs/autoscaling", list.MaxItems(1) & [..._#defs."/$defs/capacity/$defs/autoscaling"]])
		provisioned_capacity?: matchN(1, [_#defs."/$defs/capacity/$defs/provisioned_capacity", list.MaxItems(1) & [..._#defs."/$defs/capacity/$defs/provisioned_capacity"]])
	})

	#kafka_cluster: close({
		apache_kafka_cluster!: matchN(1, [_#defs."/$defs/kafka_cluster/$defs/apache_kafka_cluster", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/kafka_cluster/$defs/apache_kafka_cluster"]])
	})

	#kafka_cluster_client_authentication: close({
		authentication_type?: string
	})

	#kafka_cluster_encryption_in_transit: close({
		encryption_type?: string
	})

	#log_delivery: close({
		worker_log_delivery!: matchN(1, [_#defs."/$defs/log_delivery/$defs/worker_log_delivery", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/log_delivery/$defs/worker_log_delivery"]])
	})

	#plugin: close({
		custom_plugin!: matchN(1, [_#defs."/$defs/plugin/$defs/custom_plugin", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/plugin/$defs/custom_plugin"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#worker_configuration: close({
		arn!:      string
		revision!: number
	})

	_#defs: "/$defs/capacity/$defs/autoscaling": close({
		scale_in_policy?: matchN(1, [_#defs."/$defs/capacity/$defs/autoscaling/$defs/scale_in_policy", list.MaxItems(1) & [..._#defs."/$defs/capacity/$defs/autoscaling/$defs/scale_in_policy"]])
		scale_out_policy?: matchN(1, [_#defs."/$defs/capacity/$defs/autoscaling/$defs/scale_out_policy", list.MaxItems(1) & [..._#defs."/$defs/capacity/$defs/autoscaling/$defs/scale_out_policy"]])
		max_worker_count!: number
		mcu_count?:        number
		min_worker_count!: number
	})

	_#defs: "/$defs/capacity/$defs/autoscaling/$defs/scale_in_policy": close({
		cpu_utilization_percentage?: number
	})

	_#defs: "/$defs/capacity/$defs/autoscaling/$defs/scale_out_policy": close({
		cpu_utilization_percentage?: number
	})

	_#defs: "/$defs/capacity/$defs/provisioned_capacity": close({
		mcu_count?:    number
		worker_count!: number
	})

	_#defs: "/$defs/kafka_cluster/$defs/apache_kafka_cluster": close({
		vpc!: matchN(1, [_#defs."/$defs/kafka_cluster/$defs/apache_kafka_cluster/$defs/vpc", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/kafka_cluster/$defs/apache_kafka_cluster/$defs/vpc"]])
		bootstrap_servers!: string
	})

	_#defs: "/$defs/kafka_cluster/$defs/apache_kafka_cluster/$defs/vpc": close({
		security_groups!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/log_delivery/$defs/worker_log_delivery": close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/cloudwatch_logs"]])
		firehose?: matchN(1, [_#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/firehose", list.MaxItems(1) & [..._#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/firehose"]])
		s3?: matchN(1, [_#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/log_delivery/$defs/worker_log_delivery/$defs/s3"]])
	})

	_#defs: "/$defs/log_delivery/$defs/worker_log_delivery/$defs/cloudwatch_logs": close({
		enabled!:   bool
		log_group?: string
	})

	_#defs: "/$defs/log_delivery/$defs/worker_log_delivery/$defs/firehose": close({
		delivery_stream?: string
		enabled!:         bool
	})

	_#defs: "/$defs/log_delivery/$defs/worker_log_delivery/$defs/s3": close({
		bucket?:  string
		enabled!: bool
		prefix?:  string
	})

	_#defs: "/$defs/plugin/$defs/custom_plugin": close({
		arn!:      string
		revision!: number
	})
}
