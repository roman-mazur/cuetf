package res

import "list"

#aws_iot_billing_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_billing_group")
	arn?: string
	id?:  string
	metadata?: [...{
		creation_date?: string
	}]
	name!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	version?: number
	properties?: #properties | list.MaxItems(1) & [...#properties]

	#properties: description?: string
}
