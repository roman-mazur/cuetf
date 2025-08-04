package res

import "list"

#aws_config_organization_conformance_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_organization_conformance_pack")
	close({
		arn?:                    string
		delivery_s3_bucket?:     string
		delivery_s3_key_prefix?: string
		excluded_accounts?: [...string]
		input_parameter?: matchN(1, [#input_parameter, list.MaxItems(60) & [...#input_parameter]])
		id?:              string
		name!:            string
		region?:          string
		template_body?:   string
		template_s3_uri?: string
		timeouts?:        #timeouts
	})

	#input_parameter: close({
		parameter_name!:  string
		parameter_value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
