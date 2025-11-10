package res

#aws_ec2_allowed_images_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ec2_allowed_images_settings")
	close({
		image_criterion?: matchN(1, [#image_criterion, [...#image_criterion]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		state!:  string
	})

	#image_criterion: close({
		creation_date_condition?: matchN(1, [_#defs."/$defs/image_criterion/$defs/creation_date_condition", [..._#defs."/$defs/image_criterion/$defs/creation_date_condition"]])
		deprecation_time_condition?: matchN(1, [_#defs."/$defs/image_criterion/$defs/deprecation_time_condition", [..._#defs."/$defs/image_criterion/$defs/deprecation_time_condition"]])
		image_names?: [...string]
		image_providers?: [...string]
		marketplace_product_codes?: [...string]
	})

	_#defs: "/$defs/image_criterion/$defs/creation_date_condition": close({
		maximum_days_since_created?: number
	})

	_#defs: "/$defs/image_criterion/$defs/deprecation_time_condition": close({
		maximum_days_since_deprecated?: number
	})
}
