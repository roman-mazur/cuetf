package res

import "list"

#aws_transfer_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_transfer_access")
	close({
		external_id!:    string
		home_directory?: string
		home_directory_mappings?: matchN(1, [#home_directory_mappings, list.MaxItems(50) & [...#home_directory_mappings]])
		posix_profile?: matchN(1, [#posix_profile, list.MaxItems(1) & [...#posix_profile]])
		home_directory_type?: string
		id?:                  string
		policy?:              string
		region?:              string
		role?:                string
		server_id!:           string
	})

	#home_directory_mappings: close({
		entry!:  string
		target!: string
	})

	#posix_profile: close({
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	})
}
