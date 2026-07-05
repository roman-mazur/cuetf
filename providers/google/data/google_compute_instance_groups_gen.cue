package data

google_compute_instance_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_instance_groups")
	close({
		filter?: string
		id?:     string
		instance_groups?: [...close({
			deletion_policy?: string
			description?:     string
			name?:            string
			named_port?: [...close({
				name?: string
				port?: number
			})]
			network?:   string
			project?:   string
			self_link?: string
			size?:      number
			zone?:      string
		})]
		project?: string
		zone?:    string
	})
}
