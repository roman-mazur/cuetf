package data

#scaleway_baremetal_partition_schema: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_baremetal_partition_schema")
	close({
		// Mount point must be an absolute path
		ext_4_mountpoint?: string

		// set extra ext_4 partition
		extra_partition?: bool
		id?:              string

		// The partitioning schema in json format
		json_partition?: string

		// ID of the server offer
		offer_id!: string

		// The base image of the server
		os_id!: string

		// set swap partition
		swap?: bool
	})
}
