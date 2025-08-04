package res

import "list"

#aws_transcribe_language_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transcribe_language_model")
	close({
		input_data_config?: matchN(1, [#input_data_config, list.MaxItems(1) & [_, ...] & [...#input_data_config]])
		arn?:             string
		base_model_name!: string
		id?:              string
		language_code!:   string
		model_name!:      string
		region?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
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
