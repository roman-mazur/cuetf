package res

import "list"

#aws_budgets_budget_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_budgets_budget_action")
	close({
		account_id?:         string
		action_id?:          string
		action_type!:        string
		approval_model!:     string
		arn?:                string
		budget_name!:        string
		execution_role_arn!: string
		action_threshold!: matchN(1, [#action_threshold, list.MaxItems(1) & [_, ...] & [...#action_threshold]])
		definition!: matchN(1, [#definition, list.MaxItems(1) & [_, ...] & [...#definition]])
		subscriber!: matchN(1, [#subscriber, list.MaxItems(11) & [_, ...] & [...#subscriber]])
		id?:                string
		notification_type!: string
		status?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#action_threshold: close({
		action_threshold_type!:  string
		action_threshold_value!: number
	})

	#definition: close({
		iam_action_definition?: matchN(1, [_#defs."/$defs/definition/$defs/iam_action_definition", list.MaxItems(1) & [..._#defs."/$defs/definition/$defs/iam_action_definition"]])
		scp_action_definition?: matchN(1, [_#defs."/$defs/definition/$defs/scp_action_definition", list.MaxItems(1) & [..._#defs."/$defs/definition/$defs/scp_action_definition"]])
		ssm_action_definition?: matchN(1, [_#defs."/$defs/definition/$defs/ssm_action_definition", list.MaxItems(1) & [..._#defs."/$defs/definition/$defs/ssm_action_definition"]])
	})

	#subscriber: close({
		address!:           string
		subscription_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/definition/$defs/iam_action_definition": close({
		groups?: [...string]
		policy_arn!: string
		roles?: [...string]
		users?: [...string]
	})

	_#defs: "/$defs/definition/$defs/scp_action_definition": close({
		policy_id!: string
		target_ids!: [...string]
	})

	_#defs: "/$defs/definition/$defs/ssm_action_definition": close({
		action_sub_type!: string
		instance_ids!: [...string]
		region!: string
	})
}
