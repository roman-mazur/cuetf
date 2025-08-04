package res

#aws_vpclattice_access_log_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_access_log_subscription")
	close({
		arn?:             string
		destination_arn!: string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		resource_arn?:             string
		resource_identifier!:      string
		service_network_log_type?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
