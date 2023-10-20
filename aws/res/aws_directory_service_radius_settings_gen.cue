package res

#aws_directory_service_radius_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_radius_settings")
	authentication_protocol: string
	directory_id:            string
	display_label:           string
	id?:                     string
	radius_port:             number
	radius_retries:          number
	radius_servers: [...string]
	radius_timeout:     number
	shared_secret:      string
	use_same_username?: bool
	timeouts?:          #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
