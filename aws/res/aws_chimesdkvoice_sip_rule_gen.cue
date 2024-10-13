package res

import "list"

#aws_chimesdkvoice_sip_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_chimesdkvoice_sip_rule")
	disabled?:      bool
	id?:            string
	name!:          string
	trigger_type!:  string
	trigger_value!: string
	target_applications?: #target_applications | list.MaxItems(25) & [_, ...] & [...#target_applications]

	#target_applications: {
		aws_region!:               string
		priority!:                 number
		sip_media_application_id!: string
	}
}
