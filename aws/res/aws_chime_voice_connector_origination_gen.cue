package res

import "list"

#aws_chime_voice_connector_origination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_origination")
	close({
		route?: matchN(1, [#route, list.MaxItems(20) & [_, ...] & [...#route]])
		disabled?:           bool
		id?:                 string
		region?:             string
		voice_connector_id!: string
	})

	#route: close({
		host!:     string
		port?:     number
		priority!: number
		protocol!: string
		weight!:   number
	})
}
