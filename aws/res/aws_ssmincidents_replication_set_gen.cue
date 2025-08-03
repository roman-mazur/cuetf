package res

#aws_ssmincidents_replication_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmincidents_replication_set")
	close({
		arn?:        string
		created_by?: string
		region?: matchN(1, [#region, [...#region]])
		regions?: matchN(1, [#regions, [...#regions]])
		timeouts?:           #timeouts
		deletion_protected?: bool
		id?:                 string
		last_modified_by?:   string
		status?:             string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#region: close({
		kms_key_arn?:    string
		name!:           string
		status?:         string
		status_message?: string
	})

	#regions: close({
		kms_key_arn?:    string
		name!:           string
		status?:         string
		status_message?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
