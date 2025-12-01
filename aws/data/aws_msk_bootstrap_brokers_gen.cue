package data

#aws_msk_bootstrap_brokers: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_msk_bootstrap_brokers")
	close({
		bootstrap_brokers?:                 string
		bootstrap_brokers_public_sasl_iam?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                                        string
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
	})
}
