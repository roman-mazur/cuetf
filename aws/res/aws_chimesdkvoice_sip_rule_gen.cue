package res

import "list"

#aws_chimesdkvoice_sip_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_chimesdkvoice_sip_rule")
	close({
		disabled?: bool
		target_applications?: matchN(1, [#target_applications, list.MaxItems(25) & [_, ...] & [...#target_applications]])
		id?:            string
		name!:          string
		region?:        string
		trigger_type!:  string
		trigger_value!: string
	})

	#target_applications: close({
		aws_region!:               string
		priority!:                 number
		sip_media_application_id!: string
	})
}
