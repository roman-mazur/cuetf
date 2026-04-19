package data

#aws_s3files_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3files_access_point")
	close({
		posix_user?: matchN(1, [#posix_user, [...#posix_user]])
		root_directory?: matchN(1, [#root_directory, [...#root_directory]])
		arn?: string

		// File system ID
		file_system_id?: string

		// Access point ID
		id!: string

		// Access point name
		name?: string

		// AWS account ID of the owner
		owner_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Access point status
		status?: string
		tags?: [string]: string
	})

	#posix_user: close({
		// POSIX group ID
		gid?: number

		// Secondary POSIX group IDs
		secondary_gids?: [...number]

		// POSIX user ID
		uid?: number
	})

	#root_directory: close({
		creation_permissions?: matchN(1, [_#defs."/$defs/root_directory/$defs/creation_permissions", [..._#defs."/$defs/root_directory/$defs/creation_permissions"]])

		// Root directory path
		path?: string
	})

	_#defs: "/$defs/root_directory/$defs/creation_permissions": close({
		// Owner group ID
		owner_gid?: number

		// Owner user ID
		owner_uid?: number

		// POSIX permissions
		permissions?: string
	})
}
