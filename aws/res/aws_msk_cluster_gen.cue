package res

import "list"

#aws_msk_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_cluster")
	close({
		arn?:                                 string
		bootstrap_brokers?:                   string
		bootstrap_brokers_public_sasl_iam?:   string
		bootstrap_brokers_public_sasl_scram?: string
		bootstrap_brokers_public_tls?:        string
		bootstrap_brokers_sasl_iam?:          string
		bootstrap_brokers_sasl_scram?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                        string
		bootstrap_brokers_tls?:                         string
		bootstrap_brokers_vpc_connectivity_sasl_iam?:   string
		bootstrap_brokers_vpc_connectivity_sasl_scram?: string
		bootstrap_brokers_vpc_connectivity_tls?:        string
		cluster_name!:                                  string
		cluster_uuid?:                                  string
		current_version?:                               string
		enhanced_monitoring?:                           string
		broker_node_group_info!: matchN(1, [#broker_node_group_info, list.MaxItems(1) & [_, ...] & [...#broker_node_group_info]])
		client_authentication?: matchN(1, [#client_authentication, list.MaxItems(1) & [...#client_authentication]])
		id?: string
		configuration_info?: matchN(1, [#configuration_info, list.MaxItems(1) & [...#configuration_info]])
		kafka_version!:          string
		number_of_broker_nodes!: number
		storage_mode?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		encryption_info?: matchN(1, [#encryption_info, list.MaxItems(1) & [...#encryption_info]])
		logging_info?: matchN(1, [#logging_info, list.MaxItems(1) & [...#logging_info]])
		open_monitoring?: matchN(1, [#open_monitoring, list.MaxItems(1) & [...#open_monitoring]])
		zookeeper_connect_string?:     string
		zookeeper_connect_string_tls?: string
		timeouts?:                     #timeouts
	})

	#broker_node_group_info: close({
		connectivity_info?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/connectivity_info", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/connectivity_info"]])
		az_distribution?: string
		client_subnets!: [...string]
		instance_type!: string
		security_groups!: [...string]
		storage_info?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/storage_info", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/storage_info"]])
	})

	#client_authentication: close({
		sasl?: matchN(1, [_#defs."/$defs/client_authentication/$defs/sasl", list.MaxItems(1) & [..._#defs."/$defs/client_authentication/$defs/sasl"]])
		tls?: matchN(1, [_#defs."/$defs/client_authentication/$defs/tls", list.MaxItems(1) & [..._#defs."/$defs/client_authentication/$defs/tls"]])
		unauthenticated?: bool
	})

	#configuration_info: close({
		arn!:      string
		revision!: number
	})

	#encryption_info: close({
		encryption_in_transit?: matchN(1, [_#defs."/$defs/encryption_info/$defs/encryption_in_transit", list.MaxItems(1) & [..._#defs."/$defs/encryption_info/$defs/encryption_in_transit"]])
		encryption_at_rest_kms_key_arn?: string
	})

	#logging_info: close({
		broker_logs!: matchN(1, [_#defs."/$defs/logging_info/$defs/broker_logs", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/logging_info/$defs/broker_logs"]])
	})

	#open_monitoring: close({
		prometheus!: matchN(1, [_#defs."/$defs/open_monitoring/$defs/prometheus", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/open_monitoring/$defs/prometheus"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/broker_node_group_info/$defs/connectivity_info": close({
		public_access?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/public_access", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/public_access"]])
		vpc_connectivity?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity"]])
	})

	_#defs: "/$defs/broker_node_group_info/$defs/connectivity_info/$defs/public_access": close({
		type?: string
	})

	_#defs: "/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity": close({
		client_authentication?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication"]])
	})

	_#defs: "/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication": close({
		sasl?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication/$defs/sasl", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication/$defs/sasl"]])
		tls?: bool
	})

	_#defs: "/$defs/broker_node_group_info/$defs/connectivity_info/$defs/vpc_connectivity/$defs/client_authentication/$defs/sasl": close({
		iam?:   bool
		scram?: bool
	})

	_#defs: "/$defs/broker_node_group_info/$defs/storage_info": close({
		ebs_storage_info?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info"]])
	})

	_#defs: "/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info": close({
		provisioned_throughput?: matchN(1, [_#defs."/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info/$defs/provisioned_throughput", list.MaxItems(1) & [..._#defs."/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info/$defs/provisioned_throughput"]])
		volume_size?: number
	})

	_#defs: "/$defs/broker_node_group_info/$defs/storage_info/$defs/ebs_storage_info/$defs/provisioned_throughput": close({
		enabled?:           bool
		volume_throughput?: number
	})

	_#defs: "/$defs/client_authentication/$defs/sasl": close({
		iam?:   bool
		scram?: bool
	})

	_#defs: "/$defs/client_authentication/$defs/tls": close({
		certificate_authority_arns?: [...string]
	})

	_#defs: "/$defs/encryption_info/$defs/encryption_in_transit": close({
		client_broker?: string
		in_cluster?:    bool
	})

	_#defs: "/$defs/logging_info/$defs/broker_logs": close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/logging_info/$defs/broker_logs/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/logging_info/$defs/broker_logs/$defs/cloudwatch_logs"]])
		firehose?: matchN(1, [_#defs."/$defs/logging_info/$defs/broker_logs/$defs/firehose", list.MaxItems(1) & [..._#defs."/$defs/logging_info/$defs/broker_logs/$defs/firehose"]])
		s3?: matchN(1, [_#defs."/$defs/logging_info/$defs/broker_logs/$defs/s3", list.MaxItems(1) & [..._#defs."/$defs/logging_info/$defs/broker_logs/$defs/s3"]])
	})

	_#defs: "/$defs/logging_info/$defs/broker_logs/$defs/cloudwatch_logs": close({
		enabled!:   bool
		log_group?: string
	})

	_#defs: "/$defs/logging_info/$defs/broker_logs/$defs/firehose": close({
		delivery_stream?: string
		enabled!:         bool
	})

	_#defs: "/$defs/logging_info/$defs/broker_logs/$defs/s3": close({
		bucket?:  string
		enabled!: bool
		prefix?:  string
	})

	_#defs: "/$defs/open_monitoring/$defs/prometheus": close({
		jmx_exporter?: matchN(1, [_#defs."/$defs/open_monitoring/$defs/prometheus/$defs/jmx_exporter", list.MaxItems(1) & [..._#defs."/$defs/open_monitoring/$defs/prometheus/$defs/jmx_exporter"]])
		node_exporter?: matchN(1, [_#defs."/$defs/open_monitoring/$defs/prometheus/$defs/node_exporter", list.MaxItems(1) & [..._#defs."/$defs/open_monitoring/$defs/prometheus/$defs/node_exporter"]])
	})

	_#defs: "/$defs/open_monitoring/$defs/prometheus/$defs/jmx_exporter": close({
		enabled_in_broker!: bool
	})

	_#defs: "/$defs/open_monitoring/$defs/prometheus/$defs/node_exporter": close({
		enabled_in_broker!: bool
	})
}
