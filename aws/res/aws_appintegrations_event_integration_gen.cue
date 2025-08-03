package res

import "list"

#aws_appintegrations_event_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appintegrations_event_integration")
	close({
		arn?: string
		event_filter?: matchN(1, [#event_filter, list.MaxItems(1) & [_, ...] & [...#event_filter]])
		description?:     string
		eventbridge_bus!: string
		id?:              string
		name!:            string
		region?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#event_filter: close({
		source!: string
	})
}
