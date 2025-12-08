package res

#google_dialogflow_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_intent")
	close({
		// The name of the action associated with the intent.
		// Note: The action name must not contain whitespaces.
		action?: string

		// The list of platforms for which the first responses will be
		// copied from the messages in PLATFORM_UNSPECIFIED
		// (i.e. default platform). Possible values: ["FACEBOOK", "SLACK",
		// "TELEGRAM", "KIK", "SKYPE", "LINE", "VIBER",
		// "ACTIONS_ON_GOOGLE", "GOOGLE_HANGOUTS"]
		default_response_platforms?: [...string]

		// The name of this intent to be displayed on the console.
		display_name!: string

		// The collection of event names that trigger the intent. If the
		// collection of input contexts is not empty, all of
		// the contexts must be present in the active user session for an
		// event to trigger this intent. See the
		// [events
		// reference](https://cloud.google.com/dialogflow/docs/events-overview)
		// for more details.
		events?: [...string]

		// Information about all followup intents that have this intent as
		// a direct or indirect parent. We populate this field
		// only in the output.
		followup_intent_info?: [...close({
			followup_intent_name?:        string
			parent_followup_intent_name?: string
		})]
		id?: string

		// The list of context names required for this intent to be
		// triggered.
		// Format: projects/<Project
		// ID>/agent/sessions/-/contexts/<Context ID>.
		input_context_names?: [...string]

		// Indicates whether this is a fallback intent.
		is_fallback?: bool

		// Indicates whether Machine Learning is disabled for the intent.
		// Note: If mlDisabled setting is set to true, then this intent is
		// not taken into account during inference in ML
		// ONLY match mode. Also, auto-markup in the UI is turned off.
		ml_disabled?: bool

		// The unique identifier of this intent.
		// Format: projects/<Project ID>/agent/intents/<Intent ID>.
		name?:     string
		timeouts?: #timeouts

		// The unique identifier of the parent intent in the chain of
		// followup intents.
		// Format: projects/<Project ID>/agent/intents/<Intent ID>.
		parent_followup_intent_name?: string

		// The priority of this intent. Higher numbers represent higher
		// priorities.
		// - If the supplied value is unspecified or 0, the service
		// translates the value to 500,000, which corresponds
		// to the Normal priority in the console.
		// - If the supplied value is negative, the intent is ignored in
		// runtime detect intent requests.
		priority?: number
		project?:  string

		// Indicates whether to delete all contexts in the current session
		// when this intent is matched.
		reset_contexts?: bool

		// The unique identifier of the root intent in the chain of
		// followup intents. It identifies the correct followup
		// intents chain for this intent.
		// Format: projects/<Project ID>/agent/intents/<Intent ID>.
		root_followup_intent_name?: string

		// Indicates whether webhooks are enabled for the intent.
		// * WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in
		// the intent.
		// * WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in
		// the agent and in the intent. Also, each slot
		// filling prompt is forwarded to the webhook. Possible values:
		// ["WEBHOOK_STATE_ENABLED",
		// "WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING"]
		webhook_state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
