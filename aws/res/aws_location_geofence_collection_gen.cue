package res

#aws_location_geofence_collection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_location_geofence_collection")
	close({
		collection_arn?:  string
		collection_name!: string
		create_time?:     string
		description?:     string
		id?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		kms_key_id?: string
		timeouts?:   #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
