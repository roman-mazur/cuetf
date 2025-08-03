package res

import "list"

#aws_waf_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_waf_rule_group")
	close({
		arn?: string
		activated_rule?: matchN(1, [#activated_rule, [...#activated_rule]])
		id?:          string
		metric_name!: string
		name!:        string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#activated_rule: close({
		priority!: number
		rule_id!:  string
		type?:     string
		action?: matchN(1, [_#defs."/$defs/activated_rule/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/activated_rule/$defs/action"]])
	})

	_#defs: "/$defs/activated_rule/$defs/action": close({
		type!: string
	})
}
