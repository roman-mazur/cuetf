package res

import "list"

#aws_s3_bucket_website_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3_bucket_website_configuration")
	close({
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		routing_rules?:  string
		website_domain?: string
		error_document?: matchN(1, [#error_document, list.MaxItems(1) & [...#error_document]])
		website_endpoint?: string
		index_document?: matchN(1, [#index_document, list.MaxItems(1) & [...#index_document]])
		redirect_all_requests_to?: matchN(1, [#redirect_all_requests_to, list.MaxItems(1) & [...#redirect_all_requests_to]])
		routing_rule?: matchN(1, [#routing_rule, [...#routing_rule]])
	})

	#error_document: close({
		key!: string
	})

	#index_document: close({
		suffix!: string
	})

	#redirect_all_requests_to: close({
		host_name!: string
		protocol?:  string
	})

	#routing_rule: close({
		condition?: matchN(1, [_#defs."/$defs/routing_rule/$defs/condition", list.MaxItems(1) & [..._#defs."/$defs/routing_rule/$defs/condition"]])
		redirect!: matchN(1, [_#defs."/$defs/routing_rule/$defs/redirect", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/routing_rule/$defs/redirect"]])
	})

	_#defs: "/$defs/routing_rule/$defs/condition": close({
		http_error_code_returned_equals?: string
		key_prefix_equals?:               string
	})

	_#defs: "/$defs/routing_rule/$defs/redirect": close({
		host_name?:               string
		http_redirect_code?:      string
		protocol?:                string
		replace_key_prefix_with?: string
		replace_key_with?:        string
	})
}
