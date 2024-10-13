package res

#aws_m2_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_m2_application")
	application_id?:  string
	arn?:             string
	current_version?: number
	description?:     string
	engine_type!:     string
	id?:              string
	kms_key_id?:      string
	name!:            string
	role_arn?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	definition?: #definition | [...#definition]
	timeouts?: #timeouts

	#definition: {
		content?:     string
		s3_location?: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
