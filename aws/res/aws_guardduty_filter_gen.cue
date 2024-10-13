package res

import "list"

#aws_guardduty_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_guardduty_filter")
	action!:      string
	arn?:         string
	description?: string
	detector_id!: string
	id?:          string
	name!:        string
	rank!:        number
	tags?: [string]:     string
	tags_all?: [string]: string
	finding_criteria?: #finding_criteria | list.MaxItems(1) & [_, ...] & [...#finding_criteria]

	#finding_criteria: {
		criterion?: #finding_criteria.#criterion | [_, ...] & [...#finding_criteria.#criterion]

		#criterion: {
			equals?: [...string]
			field!:                 string
			greater_than?:          string
			greater_than_or_equal?: string
			less_than?:             string
			less_than_or_equal?:    string
			not_equals?: [...string]
		}
	}
}
