package res

import "list"

#aws_ssm_resource_data_sync: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_resource_data_sync")
	close({
		s3_destination?: matchN(1, [#s3_destination, list.MaxItems(1) & [_, ...] & [...#s3_destination]])
		id?:     string
		name!:   string
		region?: string
	})

	#s3_destination: close({
		bucket_name!: string
		kms_key_arn?: string
		prefix?:      string
		region!:      string
		sync_format?: string
	})
}
