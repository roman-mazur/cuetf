package res

#aws_finspace_kx_dataview: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_dataview")
	close({
		arn?: string
		segment_configurations?: matchN(1, [#segment_configurations, [...#segment_configurations]])
		auto_update!:          bool
		availability_zone_id?: string
		az_mode!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		changeset_id?:            string
		created_timestamp?:       string
		database_name!:           string
		description?:             string
		environment_id!:          string
		timeouts?:                #timeouts
		id?:                      string
		last_modified_timestamp?: string
		name!:                    string
		read_write?:              bool
		status?:                  string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#segment_configurations: close({
		db_paths!: [...string]
		on_demand?:   bool
		volume_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
