package res

import "list"

#aws_config_organization_conformance_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_config_organization_conformance_pack")
	arn?:                    string
	delivery_s3_bucket?:     string
	delivery_s3_key_prefix?: string
	excluded_accounts?: [...string]
	id?:              string
	name:             string
	template_body?:   string
	template_s3_uri?: string
	input_parameter?: #input_parameter | list.MaxItems(60) & [...#input_parameter]
	timeouts?:        #timeouts

	#input_parameter: {
		parameter_name:  string
		parameter_value: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
