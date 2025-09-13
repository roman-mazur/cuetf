package data

#google_compute_instance_guest_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_instance_guest_attributes")
	close({
		id?:         string
		name!:       string
		project?:    string
		query_path?: string
		query_value?: [...close({
			key?:       string
			namespace?: string
			value?:     string
		})]
		region?:         string
		variable_key?:   string
		variable_value?: string
		zone?:           string
	})
}
