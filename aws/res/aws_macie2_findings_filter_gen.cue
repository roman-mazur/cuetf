package res

import "list"

#aws_macie2_findings_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_macie2_findings_filter")
	close({
		action!:      string
		arn?:         string
		description?: string
		id?:          string
		name?:        string
		name_prefix?: string
		position?:    number
		finding_criteria?: matchN(1, [#finding_criteria, list.MaxItems(1) & [_, ...] & [...#finding_criteria]])
		region?:   string
		timeouts?: #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#finding_criteria: close({
		criterion?: matchN(1, [_#defs."/$defs/finding_criteria/$defs/criterion", [..._#defs."/$defs/finding_criteria/$defs/criterion"]])
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/finding_criteria/$defs/criterion": close({
		eq?: [...string]
		eq_exact_match?: [...string]
		field!: string
		gt?:    string
		gte?:   string
		lt?:    string
		lte?:   string
		neq?: [...string]
	})
}
