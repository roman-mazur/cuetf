package res

import "list"

#aws_wafregional_rule_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_wafregional_rule_group")
	close({
		arn?:         string
		id?:          string
		metric_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		name!:   string
		tags?: [string]:     string
		tags_all?: [string]: string
		activated_rule?: matchN(1, [#activated_rule, [...#activated_rule]])
	})

	#activated_rule: close({
		action!: matchN(1, [_#defs."/$defs/activated_rule/$defs/action", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/activated_rule/$defs/action"]])
		priority!: number
		rule_id!:  string
		type?:     string
	})

	_#defs: "/$defs/activated_rule/$defs/action": close({
		type!: string
	})
}
