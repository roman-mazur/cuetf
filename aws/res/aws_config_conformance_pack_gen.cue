package res

import "list"

#aws_config_conformance_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_conformance_pack")
	close({
		arn?:                    string
		delivery_s3_bucket?:     string
		delivery_s3_key_prefix?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		id?:              string
		name!:            string
		template_body?:   string
		template_s3_uri?: string
		input_parameter?: matchN(1, [#input_parameter, list.MaxItems(60) & [...#input_parameter]])
	})

	#input_parameter: close({
		parameter_name!:  string
		parameter_value!: string
	})
}
