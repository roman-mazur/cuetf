package res

import "list"

#aws_transfer_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_server")
	arn?:                              string
	certificate?:                      string
	directory_id?:                     string
	domain?:                           string
	endpoint?:                         string
	endpoint_type?:                    string
	force_destroy?:                    bool
	function?:                         string
	host_key?:                         string
	host_key_fingerprint?:             string
	id?:                               string
	identity_provider_type?:           string
	invocation_role?:                  string
	logging_role?:                     string
	post_authentication_login_banner?: string
	pre_authentication_login_banner?:  string
	protocols?: [...string]
	security_policy_name?:        string
	sftp_authentication_methods?: string
	structured_log_destinations?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	url?: string
	endpoint_details?: #endpoint_details | list.MaxItems(1) & [...#endpoint_details]
	protocol_details?: #protocol_details | list.MaxItems(1) & [...#protocol_details]
	s3_storage_options?: #s3_storage_options | list.MaxItems(1) & [...#s3_storage_options]
	workflow_details?: #workflow_details | list.MaxItems(1) & [...#workflow_details]

	#endpoint_details: {
		address_allocation_ids?: [...string]
		security_group_ids?: [...string]
		subnet_ids?: [...string]
		vpc_endpoint_id?: string
		vpc_id?:          string
	}

	#protocol_details: {
		as2_transports?: [...string]
		passive_ip?:                  string
		set_stat_option?:             string
		tls_session_resumption_mode?: string
	}

	#s3_storage_options: directory_listing_optimization?: string

	#workflow_details: {
		on_partial_upload?: #workflow_details.#on_partial_upload | list.MaxItems(1) & [...#workflow_details.#on_partial_upload]
		on_upload?: #workflow_details.#on_upload | list.MaxItems(1) & [...#workflow_details.#on_upload]

		#on_partial_upload: {
			execution_role!: string
			workflow_id!:    string
		}

		#on_upload: {
			execution_role!: string
			workflow_id!:    string
		}
	}
}
