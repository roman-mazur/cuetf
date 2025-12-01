package data

#aws_transfer_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_transfer_connector")
	close({
		access_role?: string
		arn?:         string
		as2_config?: [...close({
			basic_auth_secret_id?:  string
			compression?:           string
			encryption_algorithm?:  string
			local_profile_id?:      string
			mdn_response?:          string
			mdn_signing_algorithm?: string
			message_subject?:       string
			partner_profile_id?:    string
			singing_algorithm?:     string
		})]
		id!:           string
		logging_role?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		security_policy_name?: string
		service_managed_egress_ip_addresses?: [...string]
		sftp_config?: [...close({
			trusted_host_keys?: [...string]
			user_secret_id?: string
		})]
		tags?: [string]: string
		url?: string
	})
}
