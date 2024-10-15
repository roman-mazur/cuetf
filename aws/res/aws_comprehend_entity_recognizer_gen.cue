package res

import "list"

#aws_comprehend_entity_recognizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_comprehend_entity_recognizer")
	arn?:                  string
	data_access_role_arn!: string
	id?:                   string
	language_code!:        string
	model_kms_key_id?:     string
	name!:                 string
	tags?: [string]:     string
	tags_all?: [string]: string
	version_name?:        string
	version_name_prefix?: string
	volume_kms_key_id?:   string
	input_data_config?: #input_data_config | list.MaxItems(1) & [_, ...] & [...#input_data_config]
	timeouts?: #timeouts
	vpc_config?: #vpc_config | list.MaxItems(1) & [...#vpc_config]

	#input_data_config: {
		data_format?: string
		annotations?: #input_data_config.#annotations | list.MaxItems(1) & [...#input_data_config.#annotations]
		augmented_manifests?: #input_data_config.#augmented_manifests | [...#input_data_config.#augmented_manifests]
		documents?: #input_data_config.#documents | list.MaxItems(1) & [...#input_data_config.#documents]
		entity_list?: #input_data_config.#entity_list | list.MaxItems(1) & [...#input_data_config.#entity_list]
		entity_types?: #input_data_config.#entity_types | list.MaxItems(25) & [_, ...] & [...#input_data_config.#entity_types]

		#annotations: {
			s3_uri!:      string
			test_s3_uri?: string
		}

		#augmented_manifests: {
			annotation_data_s3_uri?: string
			attribute_names!: [...string]
			document_type?:           string
			s3_uri!:                  string
			source_documents_s3_uri?: string
			split?:                   string
		}

		#documents: {
			input_format?: string
			s3_uri!:       string
			test_s3_uri?:  string
		}

		#entity_list: s3_uri!: string

		#entity_types: type!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_config: {
		security_group_ids!: [...string]
		subnets!: [...string]
	}
}
