package res

import "list"

#aws_efs_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_access_point")
	arn?:             string
	file_system_arn?: string
	file_system_id!:  string
	id?:              string
	owner_id?:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	posix_user?: #posix_user | list.MaxItems(1) & [...#posix_user]
	root_directory?: #root_directory | list.MaxItems(1) & [...#root_directory]

	#posix_user: {
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	}

	#root_directory: {
		path?: string
		creation_info?: #root_directory.#creation_info | list.MaxItems(1) & [...#root_directory.#creation_info]

		#creation_info: {
			owner_gid!:   number
			owner_uid!:   number
			permissions!: string
		}
	}
}
