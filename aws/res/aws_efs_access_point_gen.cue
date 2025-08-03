package res

import "list"

#aws_efs_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_access_point")
	close({
		arn?:             string
		file_system_arn?: string
		posix_user?: matchN(1, [#posix_user, list.MaxItems(1) & [...#posix_user]])
		root_directory?: matchN(1, [#root_directory, list.MaxItems(1) & [...#root_directory]])
		file_system_id!: string
		id?:             string
		owner_id?:       string
		region?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#posix_user: close({
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	})

	#root_directory: close({
		path?: string
		creation_info?: matchN(1, [_#defs."/$defs/root_directory/$defs/creation_info", list.MaxItems(1) & [..._#defs."/$defs/root_directory/$defs/creation_info"]])
	})

	_#defs: "/$defs/root_directory/$defs/creation_info": close({
		owner_gid!:   number
		owner_uid!:   number
		permissions!: string
	})
}
