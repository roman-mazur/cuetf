package res

import "list"

#aws_budgets_budget_action: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_budgets_budget_action")
	account_id?:         string
	action_id?:          string
	action_type!:        string
	approval_model!:     string
	arn?:                string
	budget_name!:        string
	execution_role_arn!: string
	id?:                 string
	notification_type!:  string
	status?:             string
	tags?: [string]: string
	tags_all?: [string]: string
	action_threshold?: #action_threshold | list.MaxItems(1) & [_, ...] & [...#action_threshold]
	definition?: #definition | list.MaxItems(1) & [_, ...] & [...#definition]
	subscriber?: #subscriber | list.MaxItems(11) & [_, ...] & [...#subscriber]
	timeouts?: #timeouts

	#action_threshold: {
		action_threshold_type!:  string
		action_threshold_value!: number
	}

	#definition: {
		iam_action_definition?: #definition.#iam_action_definition | list.MaxItems(1) & [...#definition.#iam_action_definition]
		scp_action_definition?: #definition.#scp_action_definition | list.MaxItems(1) & [...#definition.#scp_action_definition]
		ssm_action_definition?: #definition.#ssm_action_definition | list.MaxItems(1) & [...#definition.#ssm_action_definition]

		#iam_action_definition: {
			groups?: [...string]
			policy_arn!: string
			roles?: [...string]
			users?: [...string]
		}

		#scp_action_definition: {
			policy_id!: string
			target_ids!: [...string]
		}

		#ssm_action_definition: {
			action_sub_type!: string
			instance_ids!: [...string]
			region!: string
		}
	}

	#subscriber: {
		address!:           string
		subscription_type!: string
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
