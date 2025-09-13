package res

import "list"

#google_dialogflow_cx_playbook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_playbook")
	close({
		// The timestamp of initial playbook creation.
		//
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets
		// other than "Z" are also accepted. Examples:
		// "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		create_time?: string

		// The human-readable name of the playbook, unique within an
		// agent.
		display_name!: string

		// High level description of the goal the playbook intend to
		// accomplish. A goal should be concise since it's visible to
		// other playbooks that may reference this playbook.
		goal!: string

		// The unique identifier of the Playbook.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/playbooks/<Playbook ID>.
		name?: string
		id?:   string

		// The agent to create a Playbook for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string

		// Type of the playbook. Possible values:
		// ["PLAYBOOK_TYPE_UNSPECIFIED", "TASK", "ROUTINE"]
		playbook_type?: string

		// The resource name of flows referenced by the current playbook
		// in the instructions.
		referenced_flows?: [...string]
		instruction?: matchN(1, [#instruction, list.MaxItems(1) & [...#instruction]])
		llm_model_settings?: matchN(1, [#llm_model_settings, list.MaxItems(1) & [...#llm_model_settings]])
		timeouts?: #timeouts

		// The resource name of other playbooks referenced by the current
		// playbook in the instructions.
		referenced_playbooks?: [...string]

		// The resource name of tools referenced by the current playbook
		// in the instructions. If not provided explicitly, they are will
		// be implied using the tool being referenced in goal and steps.
		referenced_tools?: [...string]

		// Estimated number of tokes current playbook takes when sent to
		// the LLM.
		token_count?: string

		// Last time the playbook version was updated.
		//
		// Uses RFC 3339, where generated output will always be
		// Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets
		// other than "Z" are also accepted. Examples:
		// "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z" or
		// "2014-10-02T15:01:23+05:30".
		update_time?: string
	})

	#instruction: close({
		steps?: matchN(1, [_#defs."/$defs/instruction/$defs/steps", [..._#defs."/$defs/instruction/$defs/steps"]])

		// General guidelines for the playbook. These are unstructured
		// instructions that are not directly part of the goal, e.g.
		// "Always be polite". It's valid for this text to be long and
		// used instead of steps altogether.
		guidelines?: string
	})

	#llm_model_settings: close({
		// The selected LLM model.
		model?: string

		// The custom prompt to use.
		prompt_text?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/instruction/$defs/steps": close({
		// Sub-processing needed to execute the current step.
		//
		// This field uses JSON data as a string. The value provided must
		// be a valid JSON representation documented in
		// [Step](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.playbooks#step).
		steps?: string

		// Step instruction in text format.
		text?: string
	})
}
