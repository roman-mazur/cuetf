package res

import "list"

#aws_transfer_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_transfer_connector")
	close({
		access_role!:  string
		arn?:          string
		connector_id?: string
		id?:           string
		as2_config?: matchN(1, [#as2_config, list.MaxItems(1) & [...#as2_config]])
		logging_role?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		egress_config?: matchN(1, [#egress_config, list.MaxItems(1) & [...#egress_config]])
		security_policy_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		url?: string
		sftp_config?: matchN(1, [#sftp_config, list.MaxItems(1) & [...#sftp_config]])
		timeouts?: #timeouts
	})

	#as2_config: close({
		compression!:           string
		encryption_algorithm!:  string
		local_profile_id!:      string
		mdn_response!:          string
		mdn_signing_algorithm?: string
		message_subject?:       string
		partner_profile_id!:    string
		signing_algorithm!:     string
	})

	#egress_config: close({
		vpc_lattice?: matchN(1, [_#defs."/$defs/egress_config/$defs/vpc_lattice", list.MaxItems(1) & [..._#defs."/$defs/egress_config/$defs/vpc_lattice"]])
	})

	#sftp_config: close({
		trusted_host_keys?: [...string]
		user_secret_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/egress_config/$defs/vpc_lattice": close({
		port_number?:                number
		resource_configuration_arn!: string
	})
}
