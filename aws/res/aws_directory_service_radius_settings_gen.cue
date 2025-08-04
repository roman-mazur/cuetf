package res

#aws_directory_service_radius_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_radius_settings")
	close({
		authentication_protocol!: string
		directory_id!:            string
		display_label!:           string
		id?:                      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		radius_port!:    number
		timeouts?:       #timeouts
		radius_retries!: number
		radius_servers!: [...string]
		radius_timeout!:    number
		shared_secret!:     string
		use_same_username?: bool
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
