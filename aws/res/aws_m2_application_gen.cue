package res

#aws_m2_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_m2_application")
	close({
		application_id?: string
		arn?:            string
		definition?: matchN(1, [#definition, [...#definition]])
		timeouts?:        #timeouts
		current_version?: number
		description?:     string
		engine_type!:     string
		id?:              string
		kms_key_id?:      string
		name!:            string
		region?:          string
		role_arn?:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#definition: close({
		content?:     string
		s3_location?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
