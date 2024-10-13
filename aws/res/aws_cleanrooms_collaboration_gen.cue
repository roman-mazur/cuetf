package res

import "list"

#aws_cleanrooms_collaboration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_cleanrooms_collaboration")
	arn?:                  string
	create_time?:          string
	creator_display_name!: string
	creator_member_abilities!: [...string]
	description!:      string
	id?:               string
	name!:             string
	query_log_status!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	update_time?: string
	data_encryption_metadata?: #data_encryption_metadata | list.MaxItems(1) & [...#data_encryption_metadata]
	member?: #member | [...#member]
	timeouts?: #timeouts

	#data_encryption_metadata: {
		allow_clear_text!:                            bool
		allow_duplicates!:                            bool
		allow_joins_on_columns_with_different_names!: bool
		preserve_nulls!:                              bool
	}

	#member: {
		account_id!:   string
		display_name!: string
		member_abilities!: [...string]
		status?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
