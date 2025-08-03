package res

#aws_chime_voice_connector_termination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chime_voice_connector_termination")
	close({
		calling_regions!: [...string]
		cidr_allow_list!: [...string]
		cps_limit?:            number
		default_phone_number?: string
		disabled?:             bool
		id?:                   string
		region?:               string
		voice_connector_id!:   string
	})
}
