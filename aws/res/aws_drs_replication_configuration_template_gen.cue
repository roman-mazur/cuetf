package res

#aws_drs_replication_configuration_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_drs_replication_configuration_template")
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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		pit_policy?: matchN(1, [#pit_policy, [...#pit_policy]])
		timeouts?:                         #timeouts
		id?:                               string
		replication_server_instance_type!: string
		replication_servers_security_groups_ids!: [...string]
		staging_area_subnet_id!: string
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})
}
