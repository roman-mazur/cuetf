package res

import "list"

#aws_iot_thing_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_thing_type")
	arn?:        string
	deprecated?: bool
	id?:         string
	name!:       string
	tags?: [string]:     string
	tags_all?: [string]: string
	properties?: #properties | list.MaxItems(1) & [...#properties]

	#properties: {
		description?: string
		searchable_attributes?: [...string]
	}
}
