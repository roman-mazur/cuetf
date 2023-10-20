package res

import "list"

#aws_glacier_vault: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_glacier_vault")
	access_policy?: string
	arn?:           string
	id?:            string
	location?:      string
	name:           string
	tags?: [string]: string
	tags_all?: [string]: string
	notification?: #notification | list.MaxItems(1) & [...#notification]

	#notification: {
		events: [...string]
		sns_topic: string
	}
}
