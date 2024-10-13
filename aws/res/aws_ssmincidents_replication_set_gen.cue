package res

#aws_ssmincidents_replication_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssmincidents_replication_set")
	arn?:                string
	created_by?:         string
	deletion_protected?: bool
	id?:                 string
	last_modified_by?:   string
	status?:             string
	tags?: [string]:     string
	tags_all?: [string]: string
	region?: #region | [_, ...] & [...#region]
	timeouts?: #timeouts

	#region: {
		kms_key_arn?:    string
		name!:           string
		status?:         string
		status_message?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
