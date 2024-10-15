package data

#aws_ssmincidents_replication_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssmincidents_replication_set")
	arn?:                string
	created_by?:         string
	deletion_protected?: bool
	id?:                 string
	last_modified_by?:   string
	region?: [...{
		kms_key_arn?:    string
		name?:           string
		status?:         string
		status_message?: string
	}]
	status?: string
	tags?: [string]: string
}
