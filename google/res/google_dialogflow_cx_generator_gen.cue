package res

import "list"

#google_dialogflow_cx_generator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_generator")
	close({
		// The human-readable name of the generator, unique within the
		// agent.
		display_name!: string
		id?:           string

		// The language to create generators for the following fields:
		// * Generator.prompt_text.text
		// If not specified, the agent's default language is used.
		language_code?: string

		// The unique identifier of the Generator.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/generators/<Generator ID>.
		name?: string
		llm_model_settings?: matchN(1, [#llm_model_settings, list.MaxItems(1) & [...#llm_model_settings]])
		model_parameter?: matchN(1, [#model_parameter, list.MaxItems(1) & [...#model_parameter]])
		placeholders?: matchN(1, [#placeholders, [...#placeholders]])

		// The agent to create a Generator for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string
		prompt_text?: matchN(1, [#prompt_text, list.MaxItems(1) & [_, ...] & [...#prompt_text]])
		timeouts?: #timeouts
	})

	#llm_model_settings: close({
		// The selected LLM model.
		model?: string

		// The custom prompt to use.
		prompt_text?: string
	})

	#model_parameter: close({
		// The maximum number of tokens to generate.
		max_decode_steps?: number

		// The temperature used for sampling. Temperature sampling occurs
		// after both topP and topK have been applied.
		// Valid range: [0.0, 1.0] Low temperature = less random. High
		// temperature = more random.
		temperature?: number

		// If set, the sampling process in each step is limited to the
		// topK tokens with highest probabilities.
		// Valid range: [1, 40] or 1000+. Small topK = less random. Large
		// topK = more random.
		top_k?: number

		// If set, only the tokens comprising the top topP probability
		// mass are considered.
		// If both topP and topK are set, topP will be used for further
		// refining candidates selected with topK.
		// Valid range: (0.0, 1.0]. Small topP = less random. Large topP =
		// more random.
		top_p?: number
	})

	#placeholders: close({
		// Unique ID used to map custom placeholder to parameters in
		// fulfillment.
		id?: string

		// Custom placeholder value in the prompt text.
		name?: string
	})

	#prompt_text: close({
		// Text input which can be used for prompt or banned phrases.
		text?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
