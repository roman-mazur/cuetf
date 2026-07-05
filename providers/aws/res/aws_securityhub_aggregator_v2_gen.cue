package res

aws_securityhub_aggregator_v2: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_securityhub_aggregator_v2")
	close({
		// The AWS Region where data is aggregated.
		aggregation_region?: string
		arn?:                string

		// The list of Regions linked to the aggregation Region.
		linked_regions?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Determines how Regions are linked: ALL_REGIONS, ALL_REGIONS_EXCEPT_SPECIFIED,
		// or SPECIFIED_REGIONS.
		region_linking_mode!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
