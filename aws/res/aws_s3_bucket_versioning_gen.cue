package res

import "list"

#aws_s3_bucket_versioning: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_versioning")
	bucket!:                string
	expected_bucket_owner?: string
	id?:                    string
	mfa?:                   string
	versioning_configuration?: #versioning_configuration | list.MaxItems(1) & [_, ...] & [...#versioning_configuration]

	#versioning_configuration: {
		mfa_delete?: string
		status!:     string
	}
}
