package res

import "list"

#aws_route53recoverycontrolconfig_safety_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53recoverycontrolconfig_safety_rule")
	close({
		arn?: string
		rule_config?: matchN(1, [#rule_config, list.MaxItems(1) & [_, ...] & [...#rule_config]])
		asserted_controls?: [...string]
		control_panel_arn!: string
		gating_controls?: [...string]
		id?:     string
		name!:   string
		status?: string
		target_controls?: [...string]
		wait_period_ms!: number
	})

	#rule_config: close({
		inverted!:  bool
		threshold!: number
		type!:      string
	})
}
