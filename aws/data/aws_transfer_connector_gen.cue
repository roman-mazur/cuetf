package data

#aws_transfer_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_connector")
	access_role?: string
	arn?:         string
	as2_config?: [...{
		basic_auth_secret_id?:  string
		compression?:           string
		encryption_algorithm?:  string
		local_profile_id?:      string
		mdn_response?:          string
		mdn_signing_algorithm?: string
		message_subject?:       string
		partner_profile_id?:    string
		singing_algorithm?:     string
	}]
	id!:                   string
	logging_role?:         string
	security_policy_name?: string
	service_managed_egress_ip_addresses?: [...string]
	sftp_config?: [...{
		trusted_host_keys?: [...string]
		user_secret_id?: string
	}]
	tags?: [string]: string
	url?: string
}
