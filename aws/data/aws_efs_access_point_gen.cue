package data

#aws_efs_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_access_point")
	close({
		access_point_id!: string
		arn?:             string
		file_system_arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		file_system_id?: string
		id?:             string
		owner_id?:       string
		posix_user?: [...close({
			gid?: number
			secondary_gids?: [...number]
			uid?: number
		})]
		root_directory?: [...close({
			creation_info?: [...close({
				owner_gid?:   number
				owner_uid?:   number
				permissions?: string
			})]
			path?: string
		})]
		tags?: [string]: string
	})
}
