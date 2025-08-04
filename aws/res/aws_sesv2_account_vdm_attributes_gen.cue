package res

import "list"

#aws_sesv2_account_vdm_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_account_vdm_attributes")
	close({
		dashboard_attributes?: matchN(1, [#dashboard_attributes, list.MaxItems(1) & [...#dashboard_attributes]])
		guardian_attributes?: matchN(1, [#guardian_attributes, list.MaxItems(1) & [...#guardian_attributes]])
		id?:          string
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
