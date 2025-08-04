package res

import "list"

#aws_cleanrooms_collaboration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cleanrooms_collaboration")
	close({
		analytics_engine?: string
		data_encryption_metadata?: matchN(1, [#data_encryption_metadata, list.MaxItems(1) & [...#data_encryption_metadata]])
		arn?:                  string
		create_time?:          string
		creator_display_name!: string
		creator_member_abilities!: [...string]
		description!: string
		id?:          string
		member?: matchN(1, [#member, [...#member]])
		name!:             string
		query_log_status!: string
		region?:           string
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
		timeouts?:    #timeouts
	})

	#data_encryption_metadata: close({
		allow_clear_text!:                            bool
		allow_duplicates!:                            bool
		allow_joins_on_columns_with_different_names!: bool
		preserve_nulls!:                              bool
	})

	#member: close({
		account_id!:   string
		display_name!: string
		member_abilities!: [...string]
		status?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
