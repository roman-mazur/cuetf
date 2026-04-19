package res

#aws_s3files_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_s3files_access_point")
	close({
		posix_user?: matchN(1, [#posix_user, [...#posix_user]])
		root_directory?: matchN(1, [#root_directory, [...#root_directory]])
		timeouts?: #timeouts
		arn?:      string

		// File system ID
		file_system_id!: string
		id?:             string

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
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#posix_user: close({
		// POSIX group ID
		gid!: number

		// Secondary POSIX group IDs
		secondary_gids?: [...number]

		// POSIX user ID
		uid!: number
	})

	#root_directory: close({
		creation_permissions?: matchN(1, [_#defs."/$defs/root_directory/$defs/creation_permissions", [..._#defs."/$defs/root_directory/$defs/creation_permissions"]])

		// Root directory path
		path?: string
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

	_#defs: "/$defs/root_directory/$defs/creation_permissions": close({
		// Owner group ID
		owner_gid!: number

		// Owner user ID
		owner_uid!: number

		// POSIX permissions
		permissions!: string
	})
}
