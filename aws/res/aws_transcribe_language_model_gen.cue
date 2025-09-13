package res

import "list"

#aws_transcribe_language_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transcribe_language_model")
	close({
		arn?:             string
		base_model_name!: string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		language_code!: string
		model_name!:    string
		tags?: [string]:     string
		tags_all?: [string]: string
		input_data_config?: matchN(1, [#input_data_config, list.MaxItems(1) & [_, ...] & [...#input_data_config]])
		timeouts?: #timeouts
	})

	#input_data_config: close({
		data_access_role_arn!: string
		s3_uri!:               string
		tuning_data_s3_uri?:   string
	})

	#timeouts: close({
		create?: string
	})
}
