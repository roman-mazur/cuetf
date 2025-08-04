package data

#elasticstack_kibana_spaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_kibana_spaces")
	close({
		id?: string
		spaces?: matchN(1, [close({
			color?:       string
			description?: string
			disabled_features?: [...string]
			id?:        string
			image_url?: string
			initials?:  string
			name!:      string
		}), [...close({
			color?:       string
			description?: string
			disabled_features?: [...string]
			id?:        string
			image_url?: string
			initials?:  string
			name!:      string
		})]])
	})
}
