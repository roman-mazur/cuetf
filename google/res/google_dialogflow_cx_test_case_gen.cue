package res

import "list"

#google_dialogflow_cx_test_case: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_test_case")
	close({
		// When the test was created. A timestamp in RFC3339 text format.
		creation_time?: string

		// The human-readable name of the test case, unique within the
		// agent. Limit of 200 characters.
		display_name!: string

		// The latest test result.
		last_test_result?: [...close({
			conversation_turns?: [...close({
				user_input?: [...close({
					enable_sentiment_analysis?: bool
					injected_parameters?:       string
					input?: [...close({
						dtmf?: [...close({
							digits?:       string
							finish_digit?: string
						})]
						event?: [...close({
							event?: string
						})]
						language_code?: string
						text?: [...close({
							text?: string
						})]
					})]
					is_webhook_enabled?: bool
				})]
				virtual_agent_output?: [...close({
					current_page?: [...close({
						display_name?: string
						name?:         string
					})]
					differences?: [...close({
						description?: string
						type?:        string
					})]
					session_parameters?: string
					status?: [...close({
						code?:    number
						details?: string
						message?: string
					})]
					text_responses?: [...close({
						text?: [...string]
					})]
					triggered_intent?: [...close({
						display_name?: string
						name?:         string
					})]
				})]
			})]
			environment?: string
			name?:        string
			test_result?: string
			test_time?:   string
		})]
		id?: string

		// The unique identifier of the test case.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/testCases/<TestCase ID>.
		name?: string

		// Additional freeform notes about the test case. Limit of 400
		// characters.
		notes?: string

		// The agent to create the test case for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string
		test_case_conversation_turns?: matchN(1, [#test_case_conversation_turns, [...#test_case_conversation_turns]])
		test_config?: matchN(1, [#test_config, list.MaxItems(1) & [...#test_config]])
		timeouts?: #timeouts

		// Tags are short descriptions that users may apply to test cases
		// for organizational and filtering purposes.
		// Each tag should start with "#" and has a limit of 30 characters
		tags?: [...string]
	})

	#test_case_conversation_turns: close({
		user_input?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/user_input", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/user_input"]])
		virtual_agent_output?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output"]])
	})

	#test_config: close({
		// Flow name to start the test case with.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>.
		// Only one of flow and page should be set to indicate the
		// starting point of the test case. If neither is set, the test
		// case will start with start page on the default start flow.
		flow?: string

		// The page to start the test case with.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		// Only one of flow and page should be set to indicate the
		// starting point of the test case. If neither is set, the test
		// case will start with start page on the default start flow.
		page?: string

		// Session parameters to be compared when calculating differences.
		tracking_parameters?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/user_input": close({
		// Whether sentiment analysis is enabled.
		enable_sentiment_analysis?: bool
		input?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input"]])

		// Parameters that need to be injected into the conversation
		// during intent detection.
		injected_parameters?: string

		// If webhooks should be allowed to trigger in response to the
		// user utterance. Often if parameters are injected, webhooks
		// should not be enabled.
		is_webhook_enabled?: bool
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/user_input/$defs/input": close({
		dtmf?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/dtmf", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/dtmf"]])
		event?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/event", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/event"]])
		text?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/text", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/text"]])

		// The language of the input. See [Language
		// Support](https://cloud.google.com/dialogflow/cx/docs/reference/language)
		// for a list of the currently supported language codes.
		// Note that queries in the same session do not necessarily need
		// to specify the same language.
		language_code?: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/dtmf": close({
		// The dtmf digits.
		digits?: string

		// The finish digit (if any).
		finish_digit?: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/event": close({
		// Name of the event.
		event!: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/user_input/$defs/input/$defs/text": close({
		// The natural language text to be processed. Text length must not
		// exceed 256 characters.
		text!: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/virtual_agent_output": close({
		current_page?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/current_page", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/current_page"]])
		text_responses?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/text_responses", [..._#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/text_responses"]])
		triggered_intent?: matchN(1, [_#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/triggered_intent", list.MaxItems(1) & [..._#defs."/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/triggered_intent"]])

		// The session parameters available to the bot at this point.
		session_parameters?: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/current_page": close({
		// The human-readable name of the page, unique within the flow.
		display_name?: string

		// The unique identifier of the page.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
		name?: string
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/text_responses": close({
		// A collection of text responses.
		text?: [...string]
	})

	_#defs: "/$defs/test_case_conversation_turns/$defs/virtual_agent_output/$defs/triggered_intent": close({
		// The human-readable name of the intent, unique within the agent.
		display_name?: string

		// The unique identifier of the intent.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/intents/<Intent ID>.
		name?: string
	})
}
