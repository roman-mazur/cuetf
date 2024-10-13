package res

#aws_drs_replication_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_drs_replication_configuration_template")
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
	replication_server_instance_type!: string
	replication_servers_security_groups_ids!: [...string]
	staging_area_subnet_id!: string
	staging_area_tags!: [string]: string
	tags?: [string]: string
	tags_all?: [string]: string
	use_dedicated_replication_server!: bool
	pit_policy?: #pit_policy | [...#pit_policy]
	timeouts?: #timeouts

	#pit_policy: {
		enabled?:            bool
		interval!:           number
		retention_duration!: number
		rule_id?:            number
		units!:              string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
