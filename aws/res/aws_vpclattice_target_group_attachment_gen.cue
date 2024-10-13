package res

import "list"

#aws_vpclattice_target_group_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_target_group_attachment")
	id?:                      string
	target_group_identifier!: string
	target?: #target | list.MaxItems(1) & [_, ...] & [...#target]
	timeouts?: #timeouts

	#target: {
		id!:   string
		port?: number
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
