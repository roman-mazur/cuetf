package data

#google_compute_interconnect_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_interconnect_location")
	close({
		address?:                       string
		availability_zone?:             string
		city?:                          string
		continent?:                     string
		description?:                   string
		facility_provider?:             string
		facility_provider_facility_id?: string
		id?:                            string
		name!:                          string
		peeringdb_facility_id?:         string
		project?:                       string
		self_link?:                     string
		status?:                        string
	})
}
