package data

google_data_catalog_taxonomy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_data_catalog_taxonomy")
	close({
		activated_policy_types?: [...string]
		description?:  string
		display_name!: string
		id?:           string
		name?:         string
		project?:      string
		region!:       string
	})
}
