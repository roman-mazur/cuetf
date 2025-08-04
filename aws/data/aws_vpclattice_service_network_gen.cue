package data

#aws_vpclattice_service_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service_network")
	close({
		arn?:        string
		auth_type?:  string
		created_at?: string
		id?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		last_updated_at?:               string
		name?:                          string
		number_of_associated_services?: number
		number_of_associated_vpcs?:     number
		service_network_identifier!:    string
		tags?: [string]: string
	})
}
