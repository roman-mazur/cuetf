package res

#aws_finspace_kx_dataview: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_finspace_kx_dataview")
	close({
		arn?: string
		segment_configurations?: matchN(1, [#segment_configurations, [...#segment_configurations]])
		timeouts?:                #timeouts
		auto_update!:             bool
		availability_zone_id?:    string
		az_mode!:                 string
		changeset_id?:            string
		created_timestamp?:       string
		database_name!:           string
		description?:             string
		environment_id!:          string
		id?:                      string
		last_modified_timestamp?: string
		name!:                    string
		read_write?:              bool
		region?:                  string
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
