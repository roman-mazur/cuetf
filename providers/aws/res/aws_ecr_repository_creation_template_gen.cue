package res

import "list"

#aws_ecr_repository_creation_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_ecr_repository_creation_template")
	close({
		encryption_configuration?: matchN(1, [#encryption_configuration, [...#encryption_configuration]])
		image_tag_mutability_exclusion_filter?: matchN(1, [#image_tag_mutability_exclusion_filter, list.MaxItems(5) & [...#image_tag_mutability_exclusion_filter]])
		applied_for!: [...string]
		custom_role_arn?:      string
		description?:          string
		id?:                   string
		image_tag_mutability?: string
		lifecycle_policy?:     string
		prefix!:               string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		registry_id?:       string
		repository_policy?: string
		resource_tags?: [string]: string
	})

	#encryption_configuration: close({
		encryption_type?: string
		kms_key?:         string
	})

	#image_tag_mutability_exclusion_filter: close({
		filter!:      string
		filter_type!: string
	})
}
