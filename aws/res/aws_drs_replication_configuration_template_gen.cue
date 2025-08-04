package res

#aws_drs_replication_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_drs_replication_configuration_template")
	close({
		arn?:                              string
		associate_default_security_group!: bool
		auto_replicate_new_disks?:         bool
		bandwidth_throttling!:             number
		create_public_ip!:                 bool
		data_plane_routing!:               string
		default_large_staging_disk_type!:  string
		ebs_encryption!:                   string
		ebs_encryption_key_arn?:           string
		id?:                               string
		pit_policy?: matchN(1, [#pit_policy, [...#pit_policy]])
		region?:                           string
		replication_server_instance_type!: string
		replication_servers_security_groups_ids!: [...string]
		staging_area_subnet_id!: string
		timeouts?:               #timeouts
		staging_area_tags!: [string]: string
		tags?: [string]:              string
		tags_all?: [string]:          string
		use_dedicated_replication_server!: bool
	})

	#pit_policy: close({
		enabled?:            bool
		interval!:           number
		retention_duration!: number
		rule_id?:            number
		units!:              string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
