package res

import "list"

#aws_athena_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_athena_database")
	bucket?:                string
	comment?:               string
	expected_bucket_owner?: string
	force_destroy?:         bool
	id?:                    string
	name!:                  string
	properties?: [string]: string
	acl_configuration?: #acl_configuration | list.MaxItems(1) & [...#acl_configuration]
	encryption_configuration?: #encryption_configuration | list.MaxItems(1) & [...#encryption_configuration]

	#acl_configuration: s3_acl_option!: string

	#encryption_configuration: {
		encryption_option!: string
		kms_key?:           string
	}
}
