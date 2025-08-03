package res

import "list"

#aws_transfer_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_connector")
	close({
		access_role!: string
		arn?:         string
		as2_config?: matchN(1, [#as2_config, list.MaxItems(1) & [...#as2_config]])
		sftp_config?: matchN(1, [#sftp_config, list.MaxItems(1) & [...#sftp_config]])
		connector_id?:         string
		id?:                   string
		logging_role?:         string
		region?:               string
		security_policy_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		url!: string
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

	#sftp_config: close({
		trusted_host_keys?: [...string]
		user_secret_id?: string
	})
}
