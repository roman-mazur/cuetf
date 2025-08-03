package res

import "list"

#aws_comprehend_document_classifier: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_comprehend_document_classifier")
	close({
		arn?:                  string
		data_access_role_arn!: string
		input_data_config?: matchN(1, [#input_data_config, list.MaxItems(1) & [_, ...] & [...#input_data_config]])
		output_data_config?: matchN(1, [#output_data_config, list.MaxItems(1) & [...#output_data_config]])
		timeouts?: #timeouts
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
		id?:               string
		language_code!:    string
		mode?:             string
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
		data_format?:     string
		label_delimiter?: string
		s3_uri?:          string
		test_s3_uri?:     string
		augmented_manifests?: matchN(1, [_#defs."/$defs/input_data_config/$defs/augmented_manifests", [..._#defs."/$defs/input_data_config/$defs/augmented_manifests"]])
	})

	#output_data_config: close({
		kms_key_id?:    string
		output_s3_uri?: string
		s3_uri!:        string
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

	_#defs: "/$defs/input_data_config/$defs/augmented_manifests": close({
		annotation_data_s3_uri?: string
		attribute_names!: [...string]
		document_type?:           string
		s3_uri!:                  string
		source_documents_s3_uri?: string
		split?:                   string
	})
}
