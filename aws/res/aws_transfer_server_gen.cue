package res

import "list"

#aws_transfer_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_server")
	close({
		arn?:          string
		certificate?:  string
		directory_id?: string
		domain?:       string
		endpoint?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		endpoint_type?: string
		force_destroy?: bool
		function?:      string

		// This is a set of arns of destinations that will receive
		// structured logs from the transfer server
		structured_log_destinations?: [...string]
		host_key?:               string
		host_key_fingerprint?:   string
		id?:                     string
		identity_provider_type?: string
		endpoint_details?: matchN(1, [#endpoint_details, list.MaxItems(1) & [...#endpoint_details]])
		invocation_role?:                  string
		logging_role?:                     string
		post_authentication_login_banner?: string
		pre_authentication_login_banner?:  string
		protocols?: [...string]
		protocol_details?: matchN(1, [#protocol_details, list.MaxItems(1) & [...#protocol_details]])
		security_policy_name?:        string
		sftp_authentication_methods?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		s3_storage_options?: matchN(1, [#s3_storage_options, list.MaxItems(1) & [...#s3_storage_options]])
		workflow_details?: matchN(1, [#workflow_details, list.MaxItems(1) & [...#workflow_details]])
		url?: string
	})

	#endpoint_details: close({
		address_allocation_ids?: [...string]
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_endpoint_id?: string
		vpc_id?:          string
	})

	#protocol_details: close({
		as2_transports?: [...string]
		passive_ip?:                  string
		set_stat_option?:             string
		tls_session_resumption_mode?: string
	})

	#s3_storage_options: close({
		directory_listing_optimization?: string
	})

	#workflow_details: close({
		on_partial_upload?: matchN(1, [_#defs."/$defs/workflow_details/$defs/on_partial_upload", list.MaxItems(1) & [..._#defs."/$defs/workflow_details/$defs/on_partial_upload"]])
		on_upload?: matchN(1, [_#defs."/$defs/workflow_details/$defs/on_upload", list.MaxItems(1) & [..._#defs."/$defs/workflow_details/$defs/on_upload"]])
	})

	_#defs: "/$defs/workflow_details/$defs/on_partial_upload": close({
		execution_role!: string
		workflow_id!:    string
	})

	_#defs: "/$defs/workflow_details/$defs/on_upload": close({
		execution_role!: string
		workflow_id!:    string
	})
}
