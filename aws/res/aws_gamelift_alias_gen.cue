package res

import "list"

#aws_gamelift_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_gamelift_alias")
	arn?:         string
	description?: string
	id?:          string
	name:         string
	tags?: [string]: string
	tags_all?: [string]: string
	routing_strategy?: #routing_strategy | list.MaxItems(1) & [_, ...] & [...#routing_strategy]

	#routing_strategy: {
		fleet_id?: string
		message?:  string
		type:      string
	}
}
