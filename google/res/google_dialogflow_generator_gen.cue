package res

import "list"

#google_dialogflow_generator: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_generator")
	close({
		// Optional. Human readable description of the generator.
		description?: string

		// Optional. The ID to use for the generator, which will become
		// the final component of the generator's resource name.
		generator_id?: string
		id?:           string

		// desc
		location!: string

		// The resource name of the generator.
		name?: string
		inference_parameter?: matchN(1, [#inference_parameter, list.MaxItems(1) & [...#inference_parameter]])
		summarization_context!: matchN(1, [#summarization_context, list.MaxItems(1) & [_, ...] & [...#summarization_context]])
		timeouts?: #timeouts
		project?:  string

		// Optional. The published Large Language Model name. * To use the
		// latest model version, specify the model name without version
		// number. Example: text-bison * To use a stable model version,
		// specify the version number as well. Example: text-bison@002.
		published_model?: string

		// Optional. The trigger event of the generator. It defines when
		// the generator is triggered in a conversation. Possible values:
		// ["END_OF_UTTERANCE", "MANUAL_CALL", "CUSTOMER_MESSAGE",
		// "AGENT_MESSAGE"]
		trigger_event?: string
	})

	#inference_parameter: close({
		// Optional. Maximum number of the output tokens for the
		// generator.
		max_output_tokens?: number

		// Optional. Controls the randomness of LLM predictions. Low
		// temperature = less random. High temperature = more random. If
		// unset (or 0), uses a default value of 0.
		temperature?: number

		// Optional. Top-k changes how the model selects tokens for
		// output. A top-k of 1 means the selected token is the most
		// probable among all tokens in the model's vocabulary (also
		// called greedy decoding), while a top-k of 3 means that the
		// next token is selected from among the 3 most probable tokens
		// (using temperature). For each token selection step, the top K
		// tokens with the highest probabilities are sampled. Then tokens
		// are further filtered based on topP with the final token
		// selected using temperature sampling. Specify a lower value for
		// less random responses and a higher value for more random
		// responses. Acceptable value is [1, 40], default to 40.
		top_k?: number

		// Optional. Top-p changes how the model selects tokens for
		// output. Tokens are selected from most K (see topK parameter)
		// probable to least until the sum of their probabilities equals
		// the top-p value. For example, if tokens A, B, and C have a
		// probability of 0.3, 0.2, and 0.1 and the top-p value is 0.5,
		// then the model will select either A or B as the next token
		// (using temperature) and doesn't consider C. The default top-p
		// value is 0.95. Specify a lower value for less random responses
		// and a higher value for more random responses. Acceptable value
		// is [0.0, 1.0], default to 0.95.
		top_p?: number
	})

	#summarization_context: close({
		few_shot_examples?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples", [..._#defs."/$defs/summarization_context/$defs/few_shot_examples"]])
		summarization_sections?: matchN(1, [_#defs."/$defs/summarization_context/$defs/summarization_sections", [..._#defs."/$defs/summarization_context/$defs/summarization_sections"]])

		// Optional. The target language of the generated summary. The
		// language code for conversation will be used if this field is
		// empty. Supported 2.0 and later versions.
		output_language_code?: string

		// Optional. Version of the feature. If not set, default to latest
		// version. Current candidates are ["1.0"].
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples": close({
		conversation_context?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context", list.MaxItems(1) & [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context"]])
		output!: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output"]])
		summarization_section_list?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list", list.MaxItems(1) & [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list"]])

		// Optional. Key is the placeholder field name in input, value is
		// the value of the placeholder. E.g. instruction contains
		// "@price", and ingested data has <"price", "10">
		extra_info?: [string]: string
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context": close({
		message_entries?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context/$defs/message_entries", [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context/$defs/message_entries"]])
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/conversation_context/$defs/message_entries": close({
		// Optional. Create time of the message entry.
		create_time?: string

		// Optional. The language of the text.
		language_code?: string

		// Optional. Participant role of the message. Possible values:
		// ["HUMAN_AGENT", "AUTOMATED_AGENT", "END_USER"]
		role?: string

		// Optional. Transcript content of the message.
		text?: string
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/output": close({
		summary_suggestion?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion", list.MaxItems(1) & [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion"]])
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion": close({
		summary_sections!: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion/$defs/summary_sections", [_, ...] & [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion/$defs/summary_sections"]])
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/output/$defs/summary_suggestion/$defs/summary_sections": close({
		// Required. Name of the section.
		section!: string

		// Required. Summary text for the section.
		summary!: string
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list": close({
		summarization_sections?: matchN(1, [_#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list/$defs/summarization_sections", [..._#defs."/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list/$defs/summarization_sections"]])
	})

	_#defs: "/$defs/summarization_context/$defs/few_shot_examples/$defs/summarization_section_list/$defs/summarization_sections": close({
		// Optional. Definition of the section, for example, "what the
		// customer needs help with or has question about."
		definition?: string

		// Optional. Name of the section, for example, "situation".
		key?: string

		// Optional. Type of the summarization section. Possible values:
		// ["SITUATION", "ACTION", "RESOLUTION",
		// "REASON_FOR_CANCELLATION", "CUSTOMER_SATISFACTION",
		// "ENTITIES", "CUSTOMER_DEFINED", "SITUATION_CONCISE",
		// "ACTION_CONCISE"]
		type?: string
	})

	_#defs: "/$defs/summarization_context/$defs/summarization_sections": close({
		// Optional. Definition of the section, for example, "what the
		// customer needs help with or has question about."
		definition?: string

		// Optional. Name of the section, for example, "situation".
		key?: string

		// Optional. Type of the summarization section. Possible values:
		// ["SITUATION", "ACTION", "RESOLUTION",
		// "REASON_FOR_CANCELLATION", "CUSTOMER_SATISFACTION",
		// "ENTITIES", "CUSTOMER_DEFINED", "SITUATION_CONCISE",
		// "ACTION_CONCISE"]
		type?: string
	})
}
