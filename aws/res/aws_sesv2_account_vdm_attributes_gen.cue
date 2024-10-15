package res

import "list"

#aws_sesv2_account_vdm_attributes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sesv2_account_vdm_attributes")
	id?:          string
	vdm_enabled!: string
	dashboard_attributes?: #dashboard_attributes | list.MaxItems(1) & [...#dashboard_attributes]
	guardian_attributes?: #guardian_attributes | list.MaxItems(1) & [...#guardian_attributes]

	#dashboard_attributes: engagement_metrics?: string

	#guardian_attributes: optimized_shared_delivery?: string
}
