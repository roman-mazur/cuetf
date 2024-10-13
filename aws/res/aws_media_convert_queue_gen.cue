package res

import "list"

#aws_media_convert_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_media_convert_queue")
	arn?:          string
	description?:  string
	id?:           string
	name!:         string
	pricing_plan?: string
	status?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	reservation_plan_settings?: #reservation_plan_settings | list.MaxItems(1) & [...#reservation_plan_settings]

	#reservation_plan_settings: {
		commitment!:     string
		renewal_type!:   string
		reserved_slots!: number
	}
}
