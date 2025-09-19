package data

#aws_msk_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_cluster")
	close({
		arn?:                                 string
		bootstrap_brokers?:                   string
		bootstrap_brokers_public_sasl_iam?:   string
		bootstrap_brokers_public_sasl_scram?: string
		bootstrap_brokers_public_tls?:        string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		bootstrap_brokers_sasl_iam?:   string
		bootstrap_brokers_sasl_scram?: string
		bootstrap_brokers_tls?:        string
		broker_node_group_info?: [...close({
			az_distribution?: string
			client_subnets?: [...string]
			connectivity_info?: [...close({
				public_access?: [...close({
					type?: string
				})]
				vpc_connectivity?: [...close({
					client_authentication?: [...close({
						sasl?: [...close({
							iam?:   bool
							scram?: bool
						})]
						tls?: bool
					})]
				})]
			})]
			instance_type?: string
			security_groups?: [...string]
			storage_info?: [...close({
				ebs_storage_info?: [...close({
					provisioned_throughput?: [...close({
						enabled?:           bool
						volume_throughput?: number
					})]
					volume_size?: number
				})]
			})]
		})]
		cluster_name!:           string
		cluster_uuid?:           string
		id?:                     string
		kafka_version?:          string
		number_of_broker_nodes?: number
		tags?: [string]: string
		zookeeper_connect_string?:     string
		zookeeper_connect_string_tls?: string
	})
}
