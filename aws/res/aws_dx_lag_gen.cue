package res

#aws_dx_lag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_lag")
	close({
		arn?:                   string
		connection_id?:         string
		connections_bandwidth!: string
		force_destroy?:         bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		has_logical_redundancy?: string
		id?:                     string
		jumbo_frame_capable?:    bool
		location!:               string
		name!:                   string
		owner_account_id?:       string
		provider_name?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
