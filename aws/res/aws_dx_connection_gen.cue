package res

#aws_dx_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dx_connection")
	close({
		arn?:                    string
		aws_device?:             string
		bandwidth!:              string
		encryption_mode?:        string
		has_logical_redundancy?: string
		id?:                     string
		jumbo_frame_capable?:    bool
		location!:               string
		macsec_capable?:         bool
		name!:                   string
		owner_account_id?:       string
		partner_name?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                 string
		port_encryption_status?: string
		provider_name?:          string
		request_macsec?:         bool
		skip_destroy?:           bool
		tags?: [string]:     string
		tags_all?: [string]: string
		vlan_id?: number
	})
}
