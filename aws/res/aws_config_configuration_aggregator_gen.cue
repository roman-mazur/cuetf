package res

import "list"

#aws_config_configuration_aggregator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_configuration_aggregator")
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
		account_aggregation_source?: matchN(1, [#account_aggregation_source, list.MaxItems(1) & [...#account_aggregation_source]])
		organization_aggregation_source?: matchN(1, [#organization_aggregation_source, list.MaxItems(1) & [...#organization_aggregation_source]])
	})

	#account_aggregation_source: close({
		account_ids!: [...string]
		all_regions?: bool
		regions?: [...string]
	})

	#organization_aggregation_source: close({
		all_regions?: bool
		regions?: [...string]
		role_arn!: string
	})
}
