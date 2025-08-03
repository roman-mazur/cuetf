package res

import "list"

#aws_config_conformance_pack: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_config_conformance_pack")
	close({
		arn?: string
		input_parameter?: matchN(1, [#input_parameter, list.MaxItems(60) & [...#input_parameter]])
		delivery_s3_bucket?:     string
		delivery_s3_key_prefix?: string
		id?:                     string
		name!:                   string
		region?:                 string
		template_body?:          string
		template_s3_uri?:        string
	})

	#input_parameter: close({
		parameter_name!:  string
		parameter_value!: string
	})
}
