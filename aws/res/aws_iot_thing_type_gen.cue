package res

import "list"

#aws_iot_thing_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_thing_type")
	close({
		properties?: matchN(1, [#properties, list.MaxItems(1) & [...#properties]])
		arn?:        string
		deprecated?: bool
		id?:         string
		name!:       string
		region?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#properties: close({
		description?: string
		searchable_attributes?: [...string]
	})
}
