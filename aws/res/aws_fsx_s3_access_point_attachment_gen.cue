package res

#aws_fsx_s3_access_point_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fsx_s3_access_point_attachment")
	close({
		name!: string
		openzfs_configuration?: matchN(1, [#openzfs_configuration, [...#openzfs_configuration]])
		s3_access_point?: matchN(1, [#s3_access_point, [...#s3_access_point]])
		timeouts?:              #timeouts
		region?:                string
		s3_access_point_alias?: string
		s3_access_point_arn?:   string
		type!:                  string
	})

	#openzfs_configuration: close({
		volume_id!: string
		file_system_identity?: matchN(1, [_#defs."/$defs/openzfs_configuration/$defs/file_system_identity", [..._#defs."/$defs/openzfs_configuration/$defs/file_system_identity"]])
	})

	#s3_access_point: close({
		policy?: string
		vpc_configuration?: matchN(1, [_#defs."/$defs/s3_access_point/$defs/vpc_configuration", [..._#defs."/$defs/s3_access_point/$defs/vpc_configuration"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/openzfs_configuration/$defs/file_system_identity": close({
		type!: string
		posix_user?: matchN(1, [_#defs."/$defs/openzfs_configuration/$defs/file_system_identity/$defs/posix_user", [..._#defs."/$defs/openzfs_configuration/$defs/file_system_identity/$defs/posix_user"]])
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
