package res

#aws_location_geofence_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_location_geofence_collection")
	collection_arn?: string
	collection_name: string
	create_time?:    string
	description?:    string
	id?:             string
	kms_key_id?:     string
	tags?: [string]: string
	tags_all?: [string]: string
	update_time?: string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
