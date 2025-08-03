package res

import "list"

#aws_gamelift_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_alias")
	close({
		arn?: string
		routing_strategy?: matchN(1, [#routing_strategy, list.MaxItems(1) & [_, ...] & [...#routing_strategy]])
		description?: string
		id?:          string
		name!:        string
		region?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#routing_strategy: close({
		fleet_id?: string
		message?:  string
		type!:     string
	})
}
