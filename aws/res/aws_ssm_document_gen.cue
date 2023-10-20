package res

import "list"

#aws_ssm_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_ssm_document")
	arn?:              string
	content:           string
	created_date?:     string
	default_version?:  string
	description?:      string
	document_format?:  string
	document_type:     string
	document_version?: string
	hash?:             string
	hash_type?:        string
	id?:               string
	latest_version?:   string
	name:              string
	owner?:            string
	parameter?: [...{
		default_value?: string
		description?:   string
		name?:          string
		type?:          string
	}]
	permissions?: [string]: string
	platform_types?: [...string]
	schema_version?: string
	status?:         string
	tags?: [string]: string
	tags_all?: [string]: string
	target_type?:        string
	version_name?:       string
	attachments_source?: #attachments_source | list.MaxItems(20) & [...#attachments_source]

	#attachments_source: {
		key:   string
		name?: string
		values: [...string]
	}
}
