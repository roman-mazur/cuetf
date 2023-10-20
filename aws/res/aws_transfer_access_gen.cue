package res

import "list"

#aws_transfer_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_transfer_access")
	external_id:              string
	home_directory?:          string
	home_directory_type?:     string
	id?:                      string
	policy?:                  string
	role?:                    string
	server_id:                string
	home_directory_mappings?: #home_directory_mappings | list.MaxItems(50) & [...#home_directory_mappings]
	posix_profile?:           #posix_profile | list.MaxItems(1) & [...#posix_profile]

	#home_directory_mappings: {
		entry:  string
		target: string
	}

	#posix_profile: {
		gid: number
		secondary_gids?: [...number]
		uid: number
	}
}
