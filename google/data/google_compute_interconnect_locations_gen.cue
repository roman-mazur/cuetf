package data

#google_compute_interconnect_locations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_interconnect_locations")
	close({
		id?: string
		locations?: [...close({
			address?:           string
			availability_zone?: string
			available_features?: [...string]
			available_link_types?: [...string]
			city?:                          string
			continent?:                     string
			description?:                   string
			facility_provider?:             string
			facility_provider_facility_id?: string
			name?:                          string
			peeringdb_facility_id?:         string
			self_link?:                     string
			status?:                        string
			supports_pzs?:                  bool
		})]
		project?: string
	})
}
