package res

import "list"

#aws_transcribe_language_model: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transcribe_language_model")
	arn?:            string
	base_model_name: string
	id?:             string
	language_code:   string
	model_name:      string
	tags?: [string]: string
	tags_all?: [string]: string
	input_data_config?: #input_data_config | list.MaxItems(1) & [_, ...] & [...#input_data_config]
	timeouts?:          #timeouts

	#input_data_config: {
		data_access_role_arn: string
		s3_uri:               string
		tuning_data_s3_uri?:  string
	}

	#timeouts: create?: string
}
