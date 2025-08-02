package data

#aws_msk_bootstrap_brokers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_msk_bootstrap_brokers")
	close({
		bootstrap_brokers?:                             string
		bootstrap_brokers_public_sasl_iam?:             string
		bootstrap_brokers_public_sasl_scram?:           string
		bootstrap_brokers_public_tls?:                  string
		bootstrap_brokers_sasl_iam?:                    string
		bootstrap_brokers_sasl_scram?:                  string
		bootstrap_brokers_tls?:                         string
		bootstrap_brokers_vpc_connectivity_sasl_iam?:   string
		bootstrap_brokers_vpc_connectivity_sasl_scram?: string
		bootstrap_brokers_vpc_connectivity_tls?:        string
		cluster_arn!:                                   string
		id?:                                            string
		region?:                                        string
	})
}
