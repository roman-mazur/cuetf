package res

#aws_m2_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_m2_deployment")
	close({
		application_id!:      string
		timeouts?:            #timeouts
		application_version!: number
		deployment_id?:       string
		environment_id!:      string
		force_stop?:          bool
		id?:                  string
		region?:              string
		start!:               bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
