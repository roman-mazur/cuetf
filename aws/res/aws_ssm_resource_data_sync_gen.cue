package res

import "list"

#aws_ssm_resource_data_sync: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_resource_data_sync")
	id?:             string
	name:            string
	s3_destination?: #s3_destination | list.MaxItems(1) & [_, ...] & [...#s3_destination]

	#s3_destination: {
		bucket_name:  string
		kms_key_arn?: string
		prefix?:      string
		region:       string
		sync_format?: string
	}
}
