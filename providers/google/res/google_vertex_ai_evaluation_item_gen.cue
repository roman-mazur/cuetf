package res

import "list"

google_vertex_ai_evaluation_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_evaluation_item")
	close({
		evaluation_request?: matchN(1, [#evaluation_request, list.MaxItems(1) & [...#evaluation_request]])
		timeouts?: #timeouts

		// Timestamp when this EvaluationItem was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The user-friendly display name for the EvaluationItem.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The error that occurred during the evaluation item processing.
		error?: [...close({
			code?:    number
			message?: string
		})]

		// The type of the EvaluationItem. Possible values: ["REQUEST", "RESULT"]
		evaluation_item_type!: string

		// The response from evaluation.
		evaluation_response?: [...close({
			candidate_results?: [...close({
				additional_results?: string
				candidate?:          string
				error?: [...close({
					code?:    number
					message?: string
				})]
				explanation?: string
				metric?:      string
				rubric_verdicts?: [...close({
					evaluated_rubric?: string
					reasoning?:        string
					verdict?:          bool
				})]
				score?: number
			})]
			evaluation_request?: string
			evaluation_run?:     string
			metadata?:           string
			metric?:             string
			request?:            string
		})]

		// The Cloud Storage object where the request or response is stored.
		// Exactly one of 'evaluation_request' or 'gcs_uri' can be set.
		gcs_uri?: string
		id?:      string

		// Labels for the EvaluationItem.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// User-defined metadata for this evaluation item as a JSON string.
		metadata?: string

		// The short name of the EvaluationItem (the final component of the resource name).
		name?: string

		// The region of the EvaluationItem. eg us-central1
		region!:  string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#evaluation_request: close({
		candidate_responses?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/candidate_responses", [..._#defs."/$defs/evaluation_request/$defs/candidate_responses"]])
		golden_response?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/golden_response", list.MaxItems(1) & [..._#defs."/$defs/evaluation_request/$defs/golden_response"]])
		prompt?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/prompt", list.MaxItems(1) & [..._#defs."/$defs/evaluation_request/$defs/prompt"]])
		rubrics?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/rubrics", [..._#defs."/$defs/evaluation_request/$defs/rubrics"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/candidate_responses": close({
		// Represents the complete execution trace of a multi-turn conversation,
		// which can involve single or multiple agents, as a JSON string. This
		// field is used to provide the full output of an agent's run, including
		// all turns and events, for direct evaluation.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		agent_data?: string

		// The name of the candidate that produced the response.
		candidate!: string

		// Error while scraping model or agent.
		error?: [...close({
			code?:    number
			message?: string
		})]

		// Text response.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		text?: string

		// Fields and values that can be used to populate the response template, as a JSON string.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		value?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/golden_response": close({
		// Represents the complete execution trace of a multi-turn conversation,
		// which can involve single or multiple agents, as a JSON string. This
		// field is used to provide the full output of an agent's run, including
		// all turns and events, for direct evaluation.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		agent_data?: string

		// The name of the candidate that produced the response.
		candidate!: string

		// Error while scraping model or agent.
		error?: [...close({
			code?:    number
			message?: string
		})]

		// Text response.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		text?: string

		// Fields and values that can be used to populate the response template, as a JSON string.
		// At most one of 'text', 'value', or 'agent_data' can be set.
		value?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/prompt": close({
		prompt_template_data?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/prompt/$defs/prompt_template_data", list.MaxItems(1) & [..._#defs."/$defs/evaluation_request/$defs/prompt/$defs/prompt_template_data"]])
		user_scenario?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/prompt/$defs/user_scenario", list.MaxItems(1) & [..._#defs."/$defs/evaluation_request/$defs/prompt/$defs/user_scenario"]])

		// Represents the complete execution trace of a multi-turn conversation,
		// which can involve single or multiple agents, as a JSON string. This
		// serves as the input context for agent scraping.
		// At most one of 'text', 'value', 'prompt_template_data', 'agent_data', or
		// 'user_scenario' can be set.
		agent_data?: string

		// Text prompt.
		// At most one of 'text', 'value', 'prompt_template_data', 'agent_data', or
		// 'user_scenario' can be set.
		text?: string

		// Fields and values that can be used to populate the prompt template, as a JSON string.
		// At most one of 'text', 'value', 'prompt_template_data', 'agent_data', or
		// 'user_scenario' can be set.
		value?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/prompt/$defs/prompt_template_data": close({
		// The values for fields in the prompt template, as a JSON string mapping
		// field names to Content objects.
		values?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/prompt/$defs/user_scenario": close({
		// The plan for the conversation, used to drive the multi-turn agent run and
		// generate the simulated agent evaluation dataset.
		conversation_plan!: string

		// The prompt that starts the conversation between the simulated user and
		// the agent under test.
		starting_prompt!: string
	})

	_#defs: "/$defs/evaluation_request/$defs/rubrics": close({
		rubrics?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics", [..._#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics"]])

		// Human-readable name for the group.
		display_name?: string

		// Unique identifier for the group.
		group_id?: string
		name!:     string
	})

	_#defs: "/$defs/evaluation_request/$defs/rubrics/$defs/rubrics": close({
		content!: matchN(1, [_#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content"]])

		// The relative importance of this rubric. Possible values: ["HIGH", "MEDIUM", "LOW"]
		importance?: string

		// Unique identifier for the rubric.
		rubric_id?: string

		// A type designator for the rubric, e.g. 'SUMMARIZATION_QUALITY'.
		type?: string
	})

	_#defs: "/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content": close({
		property?: matchN(1, [_#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content/$defs/property", list.MaxItems(1) & [..._#defs."/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content/$defs/property"]])
	})

	_#defs: "/$defs/evaluation_request/$defs/rubrics/$defs/rubrics/$defs/content/$defs/property": close({
		// Description of the property being evaluated.
		description?: string
	})
}
