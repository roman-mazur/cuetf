package res

import "list"

#aws_ssm_document: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssm_document")
	close({
		arn?:              string
		content!:          string
		created_date?:     string
		default_version?:  string
		description?:      string
		document_format?:  string
		document_type!:    string
		document_version?: string
		hash?:             string
		hash_type?:        string
		id?:               string
		latest_version?:   string
		name!:             string
		attachments_source?: matchN(1, [#attachments_source, list.MaxItems(20) & [...#attachments_source]])
		owner?: string
		parameter?: [...close({
			default_value?: string
			description?:   string
			name?:          string
			type?:          string
		})]
		permissions?: [string]: string
		platform_types?: [...string]
		region?:         string
		schema_version?: string
		status?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_type?:  string
		version_name?: string
	})

	#attachments_source: close({
		key!:  string
		name?: string
		values!: [...string]
	})
}
