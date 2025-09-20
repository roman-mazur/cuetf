package res

import "list"

#aws_ecr_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecr_repository")
	close({
		arn?:                  string
		force_delete?:         bool
		id?:                   string
		image_tag_mutability?: string
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		image_scanning_configuration?: matchN(1, [#image_scanning_configuration, list.MaxItems(1) & [...#image_scanning_configuration]])
		registry_id?:    string
		repository_url?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		image_tag_mutability_exclusion_filter?: matchN(1, [#image_tag_mutability_exclusion_filter, list.MaxItems(5) & [...#image_tag_mutability_exclusion_filter]])
		timeouts?: #timeouts
	})

	#encryption_configuration: close({
		encryption_type?: string
		kms_key?:         string
	})

	#image_scanning_configuration: close({
		scan_on_push!: bool
	})

	#image_tag_mutability_exclusion_filter: close({
		filter!:      string
		filter_type!: string
	})

	#timeouts: close({
		delete?: string
	})
}
