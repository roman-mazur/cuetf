package res

#aws_m2_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_m2_deployment")
	application_id!:      string
	application_version!: number
	deployment_id?:       string
	environment_id!:      string
	force_stop?:          bool
	id?:                  string
	start!:               bool
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
