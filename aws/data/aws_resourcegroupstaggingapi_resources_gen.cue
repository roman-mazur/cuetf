package data

import "list"

#aws_resourcegroupstaggingapi_resources: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_resourcegroupstaggingapi_resources")
	close({
		exclude_compliant_resources?: bool
		id?:                          string
		include_compliance_details?:  bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		resource_arn_list?: [...string]
		resource_tag_mapping_list?: [...close({
			compliance_details?: [...close({
				compliance_status?: bool
				keys_with_noncompliant_values?: [...string]
				non_compliant_keys?: [...string]
			})]
			resource_arn?: string
			tags?: [string]: string
		})]
		resource_type_filters?: [...string]
		tag_filter?: matchN(1, [#tag_filter, list.MaxItems(50) & [...#tag_filter]])
	})

	#tag_filter: close({
		key!: string
		values?: [...string]
	})
}
