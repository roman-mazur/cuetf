package res

import "list"

#aws_api_gateway_rest_api: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_api_gateway_rest_api")
	close({
		api_key_source?: string
		arn?:            string
		binary_media_types?: [...string]
		body?:         string
		created_date?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		description?:                  string
		disable_execute_api_endpoint?: bool
		execution_arn?:                string
		fail_on_warnings?:             bool
		endpoint_configuration?: matchN(1, [#endpoint_configuration, list.MaxItems(1) & [...#endpoint_configuration]])
		id?:                       string
		minimum_compression_size?: string
		name!:                     string
		parameters?: [string]: string
		policy?:            string
		put_rest_api_mode?: string
		root_resource_id?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#endpoint_configuration: close({
		ip_address_type?: string
		types!: [...string]
		vpc_endpoint_ids?: [...string]
	})
}
