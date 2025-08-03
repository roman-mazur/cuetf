package res

#aws_pinpoint_adm_channel: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_pinpoint_adm_channel")
	close({
		application_id!: string
		client_id!:      string
		client_secret!:  string
		enabled?:        bool
		id?:             string
		region?:         string
	})
}
