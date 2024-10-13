package res

import "list"

#aws_connect_user_hierarchy_structure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_connect_user_hierarchy_structure")
	id?:          string
	instance_id!: string
	hierarchy_structure?: #hierarchy_structure | list.MaxItems(1) & [_, ...] & [...#hierarchy_structure]

	#hierarchy_structure: {
		level_five?: #hierarchy_structure.#level_five | list.MaxItems(1) & [...#hierarchy_structure.#level_five]
		level_four?: #hierarchy_structure.#level_four | list.MaxItems(1) & [...#hierarchy_structure.#level_four]
		level_one?: #hierarchy_structure.#level_one | list.MaxItems(1) & [...#hierarchy_structure.#level_one]
		level_three?: #hierarchy_structure.#level_three | list.MaxItems(1) & [...#hierarchy_structure.#level_three]
		level_two?: #hierarchy_structure.#level_two | list.MaxItems(1) & [...#hierarchy_structure.#level_two]

		#level_five: {
			arn?:  string
			id?:   string
			name!: string
		}

		#level_four: {
			arn?:  string
			id?:   string
			name!: string
		}

		#level_one: {
			arn?:  string
			id?:   string
			name!: string
		}

		#level_three: {
			arn?:  string
			id?:   string
			name!: string
		}

		#level_two: {
			arn?:  string
			id?:   string
			name!: string
		}
	}
}
