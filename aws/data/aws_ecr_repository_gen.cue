package data

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ecr_repository")
	arn?: string
	encryption_configuration?: [...{
		encryption_type?: string
		kms_key?:         string
	}]
	id?: string
	image_scanning_configuration?: [...{
		scan_on_push?: bool
	}]
	image_tag_mutability?: string
	most_recent_image_tags?: [...string]
	name:            string
	registry_id?:    string
	repository_url?: string
	tags?: [string]: string
}
