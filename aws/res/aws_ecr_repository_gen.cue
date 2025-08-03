package res

import "list"

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_repository")
	close({
		arn?:          string
		force_delete?: bool
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		image_scanning_configuration?: matchN(1, [#image_scanning_configuration, list.MaxItems(1) & [...#image_scanning_configuration]])
		timeouts?:             #timeouts
		id?:                   string
		image_tag_mutability?: string
		name!:                 string
		region?:               string
		registry_id?:          string
		repository_url?:       string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#encryption_configuration: close({
		encryption_type?: string
		kms_key?:         string
	})

	#image_scanning_configuration: close({
		scan_on_push!: bool
	})

	#timeouts: close({
		delete?: string
	})
}
