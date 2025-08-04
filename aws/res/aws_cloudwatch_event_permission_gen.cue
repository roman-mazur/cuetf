package res

import "list"

#aws_cloudwatch_event_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_permission")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		action?:         string
		event_bus_name?: string
		id?:             string
		principal!:      string
		region?:         string
		statement_id!:   string
	})

	#condition: close({
		key!:   string
		type!:  string
		value!: string
	})
}
