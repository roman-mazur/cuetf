package res

import "list"

#aws_msk_replicator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_replicator")
	close({
		arn?:             string
		current_version?: string
		description?:     string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		kafka_cluster!: matchN(1, [#kafka_cluster, list.MaxItems(2) & [_, _, ...] & [...#kafka_cluster]])
		replication_info_list!: matchN(1, [#replication_info_list, list.MaxItems(1) & [_, ...] & [...#replication_info_list]])
		replicator_name!:            string
		service_execution_role_arn!: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#kafka_cluster: close({
		amazon_msk_cluster!: matchN(1, [_#defs."/$defs/kafka_cluster/$defs/amazon_msk_cluster", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/kafka_cluster/$defs/amazon_msk_cluster"]])
		vpc_config!: matchN(1, [_#defs."/$defs/kafka_cluster/$defs/vpc_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/kafka_cluster/$defs/vpc_config"]])
	})

	#replication_info_list: close({
		consumer_group_replication!: matchN(1, [_#defs."/$defs/replication_info_list/$defs/consumer_group_replication", [_, ...] & [..._#defs."/$defs/replication_info_list/$defs/consumer_group_replication"]])
		source_kafka_cluster_alias?: string
		source_kafka_cluster_arn!:   string
		target_compression_type!:    string
		target_kafka_cluster_alias?: string
		target_kafka_cluster_arn!:   string
		topic_replication!: matchN(1, [_#defs."/$defs/replication_info_list/$defs/topic_replication", [_, ...] & [..._#defs."/$defs/replication_info_list/$defs/topic_replication"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/kafka_cluster/$defs/amazon_msk_cluster": close({
		msk_cluster_arn!: string
	})

	_#defs: "/$defs/kafka_cluster/$defs/vpc_config": close({
		security_groups_ids?: [...string]
		subnet_ids!: [...string]
	})

	_#defs: "/$defs/replication_info_list/$defs/consumer_group_replication": close({
		consumer_groups_to_exclude?: [...string]
		consumer_groups_to_replicate!: [...string]
		detect_and_copy_new_consumer_groups?: bool
		synchronise_consumer_group_offsets?:  bool
	})

	_#defs: "/$defs/replication_info_list/$defs/topic_replication": close({
		starting_position?: matchN(1, [_#defs."/$defs/replication_info_list/$defs/topic_replication/$defs/starting_position", list.MaxItems(1) & [..._#defs."/$defs/replication_info_list/$defs/topic_replication/$defs/starting_position"]])
		copy_access_control_lists_for_topics?: bool
		copy_topic_configurations?:            bool
		detect_and_copy_new_topics?:           bool
		topics_to_exclude?: [...string]
		topics_to_replicate!: [...string]
		topic_name_configuration?: matchN(1, [_#defs."/$defs/replication_info_list/$defs/topic_replication/$defs/topic_name_configuration", list.MaxItems(1) & [..._#defs."/$defs/replication_info_list/$defs/topic_replication/$defs/topic_name_configuration"]])
	})

	_#defs: "/$defs/replication_info_list/$defs/topic_replication/$defs/starting_position": close({
		type?: string
	})

	_#defs: "/$defs/replication_info_list/$defs/topic_replication/$defs/topic_name_configuration": close({
		type?: string
	})
}
