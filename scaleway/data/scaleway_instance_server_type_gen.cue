package data

#scaleway_instance_server_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_instance_server_type")
	close({
		// The architecture of the server type
		arch?: string

		// Whether the server type is available in the zone
		availability?: string

		// The specific capabilities of the server type
		capabilities?: [...close({
			boot_types?: [...string]
			max_file_systems?: number
		})]

		// The number of CPU cores of the server type
		cpu?: number

		// Whether the server type will soon reach End Of Service
		end_of_service?: bool

		// The number of GPUs of the server type
		gpu?: number

		// The hourly price of the server type in euro
		hourly_price?: number
		id?:           string

		// The name of the server type
		name!: string

		// The network specifications of the server type
		network?: [...close({
			block_bandwidth?:    number
			internal_bandwidth?: number
			public_bandwidth?:   number
		})]

		// The number of bytes of RAM of the server type
		ram?: number

		// The specifications of volumes allowed for the server type
		volumes?: [...close({
			block_storage?:             bool
			max_size_per_local_volume?: number
			max_size_total?:            number
			min_size_per_local_volume?: number
			min_size_total?:            number
			scratch_storage_max_size?:  number
		})]

		// The zone you want to attach the resource to
		zone?: string
	})
}
