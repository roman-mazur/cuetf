package res

import "list"

#aws_transfer_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_transfer_workflow")
	close({
		arn?:         string
		description?: string
		id?:          string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		on_exception_steps?: matchN(1, [#on_exception_steps, list.MaxItems(8) & [...#on_exception_steps]])
		steps!: matchN(1, [#steps, list.MaxItems(8) & [_, ...] & [...#steps]])
	})

	#on_exception_steps: close({
		copy_step_details?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/copy_step_details", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/copy_step_details"]])
		custom_step_details?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/custom_step_details", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/custom_step_details"]])
		decrypt_step_details?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/decrypt_step_details", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/decrypt_step_details"]])
		delete_step_details?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/delete_step_details", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/delete_step_details"]])
		tag_step_details?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/tag_step_details", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/tag_step_details"]])
		type!: string
	})

	#steps: close({
		copy_step_details?: matchN(1, [_#defs."/$defs/steps/$defs/copy_step_details", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/copy_step_details"]])
		custom_step_details?: matchN(1, [_#defs."/$defs/steps/$defs/custom_step_details", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/custom_step_details"]])
		decrypt_step_details?: matchN(1, [_#defs."/$defs/steps/$defs/decrypt_step_details", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/decrypt_step_details"]])
		delete_step_details?: matchN(1, [_#defs."/$defs/steps/$defs/delete_step_details", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/delete_step_details"]])
		tag_step_details?: matchN(1, [_#defs."/$defs/steps/$defs/tag_step_details", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/tag_step_details"]])
		type!: string
	})

	_#defs: "/$defs/on_exception_steps/$defs/copy_step_details": close({
		destination_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location"]])
		name?:                 string
		overwrite_existing?:   string
		source_file_location?: string
	})

	_#defs: "/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location": close({
		efs_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location"]])
		s3_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location"]])
	})

	_#defs: "/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location": close({
		file_system_id?: string
		path?:           string
	})

	_#defs: "/$defs/on_exception_steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location": close({
		bucket?: string
		key?:    string
	})

	_#defs: "/$defs/on_exception_steps/$defs/custom_step_details": close({
		name?:                 string
		source_file_location?: string
		target?:               string
		timeout_seconds?:      number
	})

	_#defs: "/$defs/on_exception_steps/$defs/decrypt_step_details": close({
		destination_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location"]])
		name?:                 string
		overwrite_existing?:   string
		source_file_location?: string
		type!:                 string
	})

	_#defs: "/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location": close({
		efs_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location"]])
		s3_file_location?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location", list.MaxItems(1) & [..._#defs."/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location"]])
	})

	_#defs: "/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location": close({
		file_system_id?: string
		path?:           string
	})

	_#defs: "/$defs/on_exception_steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location": close({
		bucket?: string
		key?:    string
	})

	_#defs: "/$defs/on_exception_steps/$defs/delete_step_details": close({
		name?:                 string
		source_file_location?: string
	})

	_#defs: "/$defs/on_exception_steps/$defs/tag_step_details": close({
		tags?: matchN(1, [_#defs."/$defs/on_exception_steps/$defs/tag_step_details/$defs/tags", list.MaxItems(10) & [..._#defs."/$defs/on_exception_steps/$defs/tag_step_details/$defs/tags"]])
		name?:                 string
		source_file_location?: string
	})

	_#defs: "/$defs/on_exception_steps/$defs/tag_step_details/$defs/tags": close({
		key!:   string
		value!: string
	})

	_#defs: "/$defs/steps/$defs/copy_step_details": close({
		destination_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location"]])
		name?:                 string
		overwrite_existing?:   string
		source_file_location?: string
	})

	_#defs: "/$defs/steps/$defs/copy_step_details/$defs/destination_file_location": close({
		efs_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location"]])
		s3_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location"]])
	})

	_#defs: "/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/efs_file_location": close({
		file_system_id?: string
		path?:           string
	})

	_#defs: "/$defs/steps/$defs/copy_step_details/$defs/destination_file_location/$defs/s3_file_location": close({
		bucket?: string
		key?:    string
	})

	_#defs: "/$defs/steps/$defs/custom_step_details": close({
		name?:                 string
		source_file_location?: string
		target?:               string
		timeout_seconds?:      number
	})

	_#defs: "/$defs/steps/$defs/decrypt_step_details": close({
		destination_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location"]])
		name?:                 string
		overwrite_existing?:   string
		source_file_location?: string
		type!:                 string
	})

	_#defs: "/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location": close({
		efs_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location"]])
		s3_file_location?: matchN(1, [_#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location", list.MaxItems(1) & [..._#defs."/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location"]])
	})

	_#defs: "/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/efs_file_location": close({
		file_system_id?: string
		path?:           string
	})

	_#defs: "/$defs/steps/$defs/decrypt_step_details/$defs/destination_file_location/$defs/s3_file_location": close({
		bucket?: string
		key?:    string
	})

	_#defs: "/$defs/steps/$defs/delete_step_details": close({
		name?:                 string
		source_file_location?: string
	})

	_#defs: "/$defs/steps/$defs/tag_step_details": close({
		tags?: matchN(1, [_#defs."/$defs/steps/$defs/tag_step_details/$defs/tags", list.MaxItems(10) & [..._#defs."/$defs/steps/$defs/tag_step_details/$defs/tags"]])
		name?:                 string
		source_file_location?: string
	})

	_#defs: "/$defs/steps/$defs/tag_step_details/$defs/tags": close({
		key!:   string
		value!: string
	})
}
