package res

#aws_rekognition_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rekognition_collection")
	arn?:                string
	collection_id!:      string
	face_model_version?: string
	id?:                 string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: create?: string
}
