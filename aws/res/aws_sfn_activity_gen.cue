package res

import "list"

#aws_sfn_activity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sfn_activity")
	creation_date?: string
	id?:            string
	name!:          string
	tags?: [string]: string
	tags_all?: [string]: string
	encryption_configuration?: #encryption_configuration | list.MaxItems(1) & [...#encryption_configuration]

	#encryption_configuration: {
		kms_data_key_reuse_period_seconds?: number
		kms_key_id?:                        string
		type?:                              string
	}
}
