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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:    string
		hash?:      string
		hash_type?: string
		id?:        string
		attachments_source?: matchN(1, [#attachments_source, list.MaxItems(20) & [...#attachments_source]])
		latest_version?: string
		name!:           string
		owner?:          string
		parameter?: [...close({
			default_value?: string
			description?:   string
			name?:          string
			type?:          string
		})]
		permissions?: [string]: string
		platform_types?: [...string]
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
