package res

import "list"

#aws_s3_bucket_website_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_website_configuration")
	bucket!:                string
	expected_bucket_owner?: string
	id?:                    string
	routing_rules?:         string
	website_domain?:        string
	website_endpoint?:      string
	error_document?: #error_document | list.MaxItems(1) & [...#error_document]
	index_document?: #index_document | list.MaxItems(1) & [...#index_document]
	redirect_all_requests_to?: #redirect_all_requests_to | list.MaxItems(1) & [...#redirect_all_requests_to]
	routing_rule?: #routing_rule | [...#routing_rule]

	#error_document: key!: string

	#index_document: suffix!: string

	#redirect_all_requests_to: {
		host_name!: string
		protocol?:  string
	}

	#routing_rule: {
		condition?: #routing_rule.#condition | list.MaxItems(1) & [...#routing_rule.#condition]
		redirect?: #routing_rule.#redirect | list.MaxItems(1) & [_, ...] & [...#routing_rule.#redirect]

		#condition: {
			http_error_code_returned_equals?: string
			key_prefix_equals?:               string
		}

		#redirect: {
			host_name?:               string
			http_redirect_code?:      string
			protocol?:                string
			replace_key_prefix_with?: string
			replace_key_with?:        string
		}
	}
}
