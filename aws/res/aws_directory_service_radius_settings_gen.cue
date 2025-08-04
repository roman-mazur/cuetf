package res

#aws_directory_service_radius_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_radius_settings")
	close({
		authentication_protocol!: string
		directory_id!:            string
		display_label!:           string
		id?:                      string
		radius_port!:             number
		radius_retries!:          number
		radius_servers!: [...string]
		radius_timeout!:    number
		region?:            string
		timeouts?:          #timeouts
		shared_secret!:     string
		use_same_username?: bool
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
