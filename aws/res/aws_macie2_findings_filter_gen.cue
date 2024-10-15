package res

import "list"

#aws_macie2_findings_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_findings_filter")
	action!:      string
	arn?:         string
	description?: string
	id?:          string
	name?:        string
	name_prefix?: string
	position?:    number
	tags?: [string]:     string
	tags_all?: [string]: string
	finding_criteria?: #finding_criteria | list.MaxItems(1) & [_, ...] & [...#finding_criteria]

	#finding_criteria: {
		criterion?: #finding_criteria.#criterion | [...#finding_criteria.#criterion]

		#criterion: {
			eq?: [...string]
			eq_exact_match?: [...string]
			field!: string
			gt?:    string
			gte?:   string
			lt?:    string
			lte?:   string
			neq?: [...string]
		}
	}
}
