package res

import "list"

#aws_wafregional_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_wafregional_rule_group")
	arn?:         string
	id?:          string
	metric_name!: string
	name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
	activated_rule?: #activated_rule | [...#activated_rule]

	#activated_rule: {
		priority!: number
		rule_id!:  string
		type?:     string
		action?: #activated_rule.#action | list.MaxItems(1) & [_, ...] & [...#activated_rule.#action]

		#action: type!: string
	}
}
