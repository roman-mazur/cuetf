package res

import "list"

#aws_transfer_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_transfer_user")
	close({
		arn?:                 string
		home_directory?:      string
		home_directory_type?: string
		id?:                  string
		policy?:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		role!:   string
		home_directory_mappings?: matchN(1, [#home_directory_mappings, [...#home_directory_mappings]])
		server_id!: string
		posix_profile?: matchN(1, [#posix_profile, list.MaxItems(1) & [...#posix_profile]])
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?:  #timeouts
		user_name!: string
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

	#timeouts: close({
		delete?: string
	})
}
