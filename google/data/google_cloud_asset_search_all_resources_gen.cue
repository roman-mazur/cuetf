package data

#google_cloud_asset_search_all_resources: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_asset_search_all_resources")
	close({
		asset_types?: [...string]
		id?:    string
		query?: string
		results?: [...close({
			asset_type?:   string
			create_time?:  string
			description?:  string
			display_name?: string
			folders?: [...string]
			kms_keys?: [...string]
			labels?: [string]: string
			location?: string
			name?:     string
			network_tags?: [...string]
			organization?:              string
			parent_asset_type?:         string
			parent_full_resource_name?: string
			project?:                   string
			state?:                     string
			update_time?:               string
		})]
		scope!: string
	})
}
