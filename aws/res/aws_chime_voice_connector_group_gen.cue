package res

import "list"

#aws_chime_voice_connector_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_group")
	close({
		connector?: matchN(1, [#connector, list.MaxItems(3) & [...#connector]])
		id?:     string
		name!:   string
		region?: string
	})

	#connector: close({
		priority!:           number
		voice_connector_id!: string
	})
}
