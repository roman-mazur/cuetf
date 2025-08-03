package res

import "list"

#aws_media_convert_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_media_convert_queue")
	close({
		arn?: string
		reservation_plan_settings?: matchN(1, [#reservation_plan_settings, list.MaxItems(1) & [...#reservation_plan_settings]])
		concurrent_jobs?: number
		description?:     string
		id?:              string
		name!:            string
		pricing_plan?:    string
		region?:          string
		status?:          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#reservation_plan_settings: close({
		commitment!:     string
		renewal_type!:   string
		reserved_slots!: number
	})
}
