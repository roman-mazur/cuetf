package res

import "list"

#aws_datasync_location_s3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_s3")
	close({
		agent_arns?: [...string]
		arn?:              string
		id?:               string
		region?:           string
		s3_bucket_arn!:    string
		s3_storage_class?: string
		subdirectory!:     string
		s3_config?: matchN(1, [#s3_config, list.MaxItems(1) & [_, ...] & [...#s3_config]])
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})

	#s3_config: close({
		bucket_access_role_arn!: string
	})
}
