package res

import "list"

#aws_sesv2_account_vdm_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sesv2_account_vdm_attributes")
	close({
		dashboard_attributes?: matchN(1, [#dashboard_attributes, list.MaxItems(1) & [...#dashboard_attributes]])
		guardian_attributes?: matchN(1, [#guardian_attributes, list.MaxItems(1) & [...#guardian_attributes]])
		id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		vdm_enabled!: string
	})

	#dashboard_attributes: close({
		engagement_metrics?: string
	})

	#guardian_attributes: close({
		optimized_shared_delivery?: string
	})
}
