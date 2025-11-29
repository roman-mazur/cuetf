package data

#google_compute_machine_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_machine_types")
	close({
		// The list of machine types
		machine_types?: [...close({
			accelerators?: [...close({
				guest_accelerator_count?: number
				guest_accelerator_type?:  string
			})]
			deprecated?: [...close({
				replacement?: string
				state?:       string
			})]
			description?:                      string
			guest_cpus?:                       number
			is_shared_cpus?:                   bool
			maximum_persistent_disks?:         number
			maximum_persistent_disks_size_gb?: number
			memory_mb?:                        number
			name?:                             string
			self_link?:                        string
		})]

		// Project ID for this request.
		project?: string
		filter?:  string

		// The name of the zone for this request.
		zone?: string
		id?:   string
	})
}
