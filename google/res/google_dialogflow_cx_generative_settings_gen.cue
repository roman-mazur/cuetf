package res

import "list"

#google_dialogflow_cx_generative_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_generative_settings")
	close({
		id?: string

		// Language for this settings.
		language_code!: string
		fallback_settings?: matchN(1, [#fallback_settings, list.MaxItems(1) & [...#fallback_settings]])

		// The unique identifier of the generativeSettings.
		// Format:
		// projects/<ProjectID>/locations/<LocationID>/agents/<AgentID>/generativeSettings.
		name?: string

		// The agent to create a flow for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string
		generative_safety_settings?: matchN(1, [#generative_safety_settings, list.MaxItems(1) & [...#generative_safety_settings]])
		knowledge_connector_settings?: matchN(1, [#knowledge_connector_settings, list.MaxItems(1) & [...#knowledge_connector_settings]])
		llm_model_settings?: matchN(1, [#llm_model_settings, list.MaxItems(1) & [...#llm_model_settings]])
		timeouts?: #timeouts
	})

	#fallback_settings: close({
		prompt_templates?: matchN(1, [_#defs."/$defs/fallback_settings/$defs/prompt_templates", [..._#defs."/$defs/fallback_settings/$defs/prompt_templates"]])

		// Display name of the selected prompt.
		selected_prompt?: string
	})

	#generative_safety_settings: close({
		banned_phrases?: matchN(1, [_#defs."/$defs/generative_safety_settings/$defs/banned_phrases", [..._#defs."/$defs/generative_safety_settings/$defs/banned_phrases"]])

		// Optional. Default phrase match strategy for banned phrases.
		// See
		// [PhraseMatchStrategy](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/GenerativeSettings#phrasematchstrategy)
		// for valid values.
		default_banned_phrase_match_strategy?: string
	})

	#knowledge_connector_settings: close({
		// Name of the virtual agent. Used for LLM prompt. Can be left
		// empty.
		agent?: string

		// Identity of the agent, e.g. "virtual agent", "AI assistant".
		agent_identity?: string

		// Agent scope, e.g. "Example company website", "internal Example
		// company website for employees", "manual of car owner".
		agent_scope?: string

		// Name of the company, organization or other entity that the
		// agent represents. Used for knowledge connector LLM prompt and
		// for knowledge search.
		business?: string

		// Company description, used for LLM prompt, e.g. "a family
		// company selling freshly roasted coffee beans".''
		business_description?: string

		// Whether to disable fallback to Data Store search results (in
		// case the LLM couldn't pick a proper answer). Per default the
		// feature is enabled.
		disable_data_store_fallback?: bool
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

	_#defs: "/$defs/fallback_settings/$defs/prompt_templates": close({
		// Prompt name.
		display_name?: string

		// If the flag is true, the prompt is frozen and cannot be
		// modified by users.
		frozen?: bool

		// Prompt text that is sent to a LLM on no-match default,
		// placeholders are filled downstream. For example: "Here is a
		// conversation $conversation, a response is: "
		prompt_text?: string
	})

	_#defs: "/$defs/generative_safety_settings/$defs/banned_phrases": close({
		// Language code of the phrase.
		language_code!: string

		// Text input which can be used for prompt or banned phrases.
		text!: string
	})
}
