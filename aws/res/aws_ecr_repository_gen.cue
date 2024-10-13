package res

import "list"

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_repository")
	arn?:                  string
	force_delete?:         bool
	id?:                   string
	image_tag_mutability?: string
	name!:                 string
	registry_id?:          string
	repository_url?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	encryption_configuration?: #encryption_configuration | [...#encryption_configuration]
	image_scanning_configuration?: #image_scanning_configuration | list.MaxItems(1) & [...#image_scanning_configuration]
	timeouts?: #timeouts

	#encryption_configuration: {
		encryption_type?: string
		kms_key?:         string
	}

	#image_scanning_configuration: scan_on_push!: bool

	#timeouts: delete?: string
}
