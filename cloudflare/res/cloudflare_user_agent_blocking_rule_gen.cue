package res

import "list"

#cloudflare_user_agent_blocking_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user_agent_blocking_rule")
	description!: string
	id?:          string
	mode!:        string
	paused!:      bool
	zone_id!:     string
	configuration?: #configuration | list.MaxItems(1) & [_, ...] & [...#configuration]

	#configuration: {
		target!: string
		value!:  string
	}
}
