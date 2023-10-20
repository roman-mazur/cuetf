package data

#aws_msk_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_msk_cluster")
	arn?:                                 string
	bootstrap_brokers?:                   string
	bootstrap_brokers_public_sasl_iam?:   string
	bootstrap_brokers_public_sasl_scram?: string
	bootstrap_brokers_public_tls?:        string
	bootstrap_brokers_sasl_iam?:          string
	bootstrap_brokers_sasl_scram?:        string
	bootstrap_brokers_tls?:               string
	cluster_name:                         string
	cluster_uuid?:                        string
	id?:                                  string
	kafka_version?:                       string
	number_of_broker_nodes?:              number
	tags?: [string]: string
	zookeeper_connect_string?:     string
	zookeeper_connect_string_tls?: string
}
