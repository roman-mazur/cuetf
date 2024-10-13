package res

import "list"

#aws_transfer_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_user")
	arn?:                 string
	home_directory?:      string
	home_directory_type?: string
	id?:                  string
	policy?:              string
	role!:                string
	server_id!:           string
	tags?: [string]: string
	tags_all?: [string]: string
	user_name!: string
	home_directory_mappings?: #home_directory_mappings | [...#home_directory_mappings]
	posix_profile?: #posix_profile | list.MaxItems(1) & [...#posix_profile]
	timeouts?: #timeouts

	#home_directory_mappings: {
		entry!:  string
		target!: string
	}

	#posix_profile: {
		gid!: number
		secondary_gids?: [...number]
		uid!: number
	}

	#timeouts: delete?: string
}
