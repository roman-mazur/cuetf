package res

import "list"

#aws_guardduty_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_guardduty_filter")
	close({
		action!:      string
		arn?:         string
		description?: string
		detector_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		id?:     string
		name!:   string
		finding_criteria?: matchN(1, [#finding_criteria, list.MaxItems(1) & [_, ...] & [...#finding_criteria]])
		rank!: number
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#finding_criteria: close({
		criterion?: matchN(1, [_#defs."/$defs/finding_criteria/$defs/criterion", [_, ...] & [..._#defs."/$defs/finding_criteria/$defs/criterion"]])
	})

	_#defs: "/$defs/finding_criteria/$defs/criterion": close({
		equals?: [...string]
		field!:                 string
		greater_than?:          string
		greater_than_or_equal?: string
		less_than?:             string
		less_than_or_equal?:    string
		not_equals?: [...string]
	})
}
