package res

#aws_ecr_repository_creation_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_repository_creation_template")
	applied_for!: [...string]
	custom_role_arn?:      string
	description?:          string
	id?:                   string
	image_tag_mutability?: string
	lifecycle_policy?:     string
	prefix!:               string
	registry_id?:          string
	repository_policy?:    string
	resource_tags?: [string]: string
	encryption_configuration?: #encryption_configuration | [...#encryption_configuration]

	#encryption_configuration: {
		encryption_type?: string
		kms_key?:         string
	}
}
