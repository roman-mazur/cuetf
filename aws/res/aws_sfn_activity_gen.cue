package res

import "list"

#aws_sfn_activity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_activity")
	close({
		creation_date?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, list.MaxItems(1) & [...#encryption_configuration]])
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#encryption_configuration: close({
		kms_data_key_reuse_period_seconds?: number
		kms_key_id?:                        string
		type?:                              string
	})
}
