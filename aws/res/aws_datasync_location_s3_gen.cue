package res

import "list"

#aws_datasync_location_s3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_datasync_location_s3")
	agent_arns?: [...string]
	arn?:              string
	id?:               string
	s3_bucket_arn:     string
	s3_storage_class?: string
	subdirectory:      string
	tags?: [string]: string
	tags_all?: [string]: string
	uri?:       string
	s3_config?: #s3_config | list.MaxItems(1) & [_, ...] & [...#s3_config]

	#s3_config: bucket_access_role_arn: string
}
