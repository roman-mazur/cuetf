package res

import "list"

#aws_datasync_location_s3: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_datasync_location_s3")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		agent_arns?: [...string]
		arn?:              string
		id?:               string
		s3_bucket_arn!:    string
		s3_storage_class?: string
		s3_config!: matchN(1, [#s3_config, list.MaxItems(1) & [_, ...] & [...#s3_config]])
		subdirectory!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		uri?: string
	})

	#s3_config: close({
		bucket_access_role_arn!: string
	})
}
