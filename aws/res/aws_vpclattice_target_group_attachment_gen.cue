package res

import "list"

#aws_vpclattice_target_group_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_target_group_attachment")
	close({
		target?: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?:                #timeouts
		id?:                      string
		region?:                  string
		target_group_identifier!: string
	})

	#target: close({
		id!:   string
		port?: number
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
