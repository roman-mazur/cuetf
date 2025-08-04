package res

import "list"

#aws_gamelift_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_gamelift_script")
	close({
		arn?:  string
		id?:   string
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?:  string
		zip_file?: string
		storage_location?: matchN(1, [#storage_location, list.MaxItems(1) & [...#storage_location]])
	})

	#storage_location: close({
		bucket!:         string
		key!:            string
		object_version?: string
		role_arn!:       string
	})
}
