package res

import "list"

#aws_comprehend_entity_recognizer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_comprehend_entity_recognizer")
	close({
		arn?:                  string
		data_access_role_arn!: string
		input_data_config?: matchN(1, [#input_data_config, list.MaxItems(1) & [_, ...] & [...#input_data_config]])
		timeouts?: #timeouts
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		id?:               string
		language_code!:    string
		model_kms_key_id?: string
		name!:             string
		region?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		version_name?:        string
		version_name_prefix?: string
		volume_kms_key_id?:   string
	})

	#input_data_config: close({
		data_format?: string
		annotations?: matchN(1, [_#defs."/$defs/input_data_config/$defs/annotations", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/annotations"]])
		augmented_manifests?: matchN(1, [_#defs."/$defs/input_data_config/$defs/augmented_manifests", [..._#defs."/$defs/input_data_config/$defs/augmented_manifests"]])
		documents?: matchN(1, [_#defs."/$defs/input_data_config/$defs/documents", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/documents"]])
		entity_list?: matchN(1, [_#defs."/$defs/input_data_config/$defs/entity_list", list.MaxItems(1) & [..._#defs."/$defs/input_data_config/$defs/entity_list"]])
		entity_types?: matchN(1, [_#defs."/$defs/input_data_config/$defs/entity_types", list.MaxItems(25) & [_, ...] & [..._#defs."/$defs/input_data_config/$defs/entity_types"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnets!: [...string]
	})

	_#defs: "/$defs/input_data_config/$defs/annotations": close({
		s3_uri!:      string
		test_s3_uri?: string
	})

	_#defs: "/$defs/input_data_config/$defs/augmented_manifests": close({
		annotation_data_s3_uri?: string
		attribute_names!: [...string]
		document_type?:           string
		s3_uri!:                  string
		source_documents_s3_uri?: string
		split?:                   string
	})

	_#defs: "/$defs/input_data_config/$defs/documents": close({
		input_format?: string
		s3_uri!:       string
		test_s3_uri?:  string
	})

	_#defs: "/$defs/input_data_config/$defs/entity_list": close({
		s3_uri!: string
	})

	_#defs: "/$defs/input_data_config/$defs/entity_types": close({
		type!: string
	})
}
