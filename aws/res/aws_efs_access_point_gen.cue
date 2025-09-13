package res

import "list"

#aws_efs_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_access_point")
	close({
		arn?:             string
		file_system_arn?: string
		file_system_id!:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		id?:       string
		owner_id?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		posix_user?: matchN(1, [#posix_user, list.MaxItems(1) & [...#posix_user]])
		root_directory?: matchN(1, [#root_directory, list.MaxItems(1) & [...#root_directory]])
	})

	#posix_user: close({
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	})

	#root_directory: close({
		creation_info?: matchN(1, [_#defs."/$defs/root_directory/$defs/creation_info", list.MaxItems(1) & [..._#defs."/$defs/root_directory/$defs/creation_info"]])
		path?: string
	})

	_#defs: "/$defs/root_directory/$defs/creation_info": close({
		owner_gid!:   number
		owner_uid!:   number
		permissions!: string
	})
}
