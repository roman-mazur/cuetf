package res

import "list"

#aws_verifiedaccess_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_verifiedaccess_group")
	creation_time?:     string
	deletion_time?:     string
	description?:       string
	id?:                string
	last_updated_time?: string
	owner?:             string
	policy_document?:   string
	tags?: [string]:     string
	tags_all?: [string]: string
	verifiedaccess_group_arn?:   string
	verifiedaccess_group_id?:    string
	verifiedaccess_instance_id!: string
	sse_configuration?: #sse_configuration | list.MaxItems(1) & [...#sse_configuration]

	#sse_configuration: {
		customer_managed_key_enabled?: bool
		kms_key_arn?:                  string
	}
}
