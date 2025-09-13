package res

#aws_fsx_s3_access_point_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_s3_access_point_attachment")
	close({
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                string
		s3_access_point_alias?: string
		s3_access_point_arn?:   string
		openzfs_configuration?: matchN(1, [#openzfs_configuration, [...#openzfs_configuration]])
		type!: string
		s3_access_point?: matchN(1, [#s3_access_point, [...#s3_access_point]])
		timeouts?: #timeouts
	})

	#openzfs_configuration: close({
		file_system_identity?: matchN(1, [_#defs."/$defs/openzfs_configuration/$defs/file_system_identity", [..._#defs."/$defs/openzfs_configuration/$defs/file_system_identity"]])
		volume_id!: string
	})

	#s3_access_point: close({
		vpc_configuration?: matchN(1, [_#defs."/$defs/s3_access_point/$defs/vpc_configuration", [..._#defs."/$defs/s3_access_point/$defs/vpc_configuration"]])
		policy?: string
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
	})

	_#defs: "/$defs/openzfs_configuration/$defs/file_system_identity": close({
		posix_user?: matchN(1, [_#defs."/$defs/openzfs_configuration/$defs/file_system_identity/$defs/posix_user", [..._#defs."/$defs/openzfs_configuration/$defs/file_system_identity/$defs/posix_user"]])
		type!: string
	})

	_#defs: "/$defs/openzfs_configuration/$defs/file_system_identity/$defs/posix_user": close({
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	})

	_#defs: "/$defs/s3_access_point/$defs/vpc_configuration": close({
		vpc_id?: string
	})
}
