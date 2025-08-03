package data

#aws_location_geofence_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_location_geofence_collection")
	close({
		collection_arn?:  string
		collection_name!: string
		create_time?:     string
		description?:     string
		id?:              string
		kms_key_id?:      string
		region?:          string
		tags?: [string]: string
		update_time?: string
	})
}
