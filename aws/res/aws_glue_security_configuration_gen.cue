package res

import "list"

#aws_glue_security_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glue_security_configuration")
	id?:   string
	name!: string
	encryption_configuration?: #encryption_configuration | list.MaxItems(1) & [_, ...] & [...#encryption_configuration]

	#encryption_configuration: {
		cloudwatch_encryption?: #encryption_configuration.#cloudwatch_encryption | list.MaxItems(1) & [_, ...] & [...#encryption_configuration.#cloudwatch_encryption]
		job_bookmarks_encryption?: #encryption_configuration.#job_bookmarks_encryption | list.MaxItems(1) & [_, ...] & [...#encryption_configuration.#job_bookmarks_encryption]
		s3_encryption?: #encryption_configuration.#s3_encryption | list.MaxItems(1) & [_, ...] & [...#encryption_configuration.#s3_encryption]

		#cloudwatch_encryption: {
			cloudwatch_encryption_mode?: string
			kms_key_arn?:                string
		}

		#job_bookmarks_encryption: {
			job_bookmarks_encryption_mode?: string
			kms_key_arn?:                   string
		}

		#s3_encryption: {
			kms_key_arn?:        string
			s3_encryption_mode?: string
		}
	}
}
