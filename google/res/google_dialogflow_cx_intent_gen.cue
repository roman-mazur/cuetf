package res

#google_dialogflow_cx_intent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_cx_intent")
	close({
		// Human readable description for better understanding an intent
		// like its scope, content, result etc. Maximum character limit:
		// 140 characters.
		description?: string

		// The human-readable name of the intent, unique within the agent.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Marks this as the [Default Negative
		// Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#negative)
		// for an agent. When you create an agent, a Default Negative
		// Intent is created automatically.
		// The Default Negative Intent cannot be deleted; deleting the
		// 'google_dialogflow_cx_intent' resource does nothing to the
		// underlying GCP resources.
		//
		// ~> Avoid having multiple 'google_dialogflow_cx_intent'
		// resources linked to the same agent with
		// 'is_default_negative_intent = true' because they will compete
		// to control a single Default Negative Intent resource in GCP.
		is_default_negative_intent?: bool
		id?:                         string

		// Marks this as the [Default Welcome
		// Intent](https://cloud.google.com/dialogflow/cx/docs/concept/intent#welcome)
		// for an agent. When you create an agent, a Default Welcome
		// Intent is created automatically.
		// The Default Welcome Intent cannot be deleted; deleting the
		// 'google_dialogflow_cx_intent' resource does nothing to the
		// underlying GCP resources.
		//
		// ~> Avoid having multiple 'google_dialogflow_cx_intent'
		// resources linked to the same agent with
		// 'is_default_welcome_intent = true' because they will compete
		// to control a single Default Welcome Intent resource in GCP.
		is_default_welcome_intent?: bool

		// Indicates whether this is a fallback intent. Currently only
		// default fallback intent is allowed in the agent, which is
		// added upon agent creation.
		// Adding training phrases to fallback intent is useful in the
		// case of requests that are mistakenly matched, since training
		// phrases assigned to fallback intents act as negative examples
		// that triggers no-match event.
		// To manage the fallback intent, set 'is_default_negative_intent
		// = true'
		is_fallback?: bool

		// The key/value metadata to label an intent. Labels can contain
		// lowercase letters, digits and the symbols '-' and '_'.
		// International characters are allowed, including letters from
		// unicase alphabets. Keys must start with a letter. Keys and
		// values can be no longer than 63 characters and no more than
		// 128 bytes.
		// Prefix "sys-" is reserved for Dialogflow defined labels.
		// Currently allowed Dialogflow defined labels include: *
		// sys-head * sys-contextual The above labels do not require
		// value. "sys-head" means the intent is a head intent.
		// "sys.contextual" means the intent is a contextual intent.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The language of the following fields in intent:
		// Intent.training_phrases.parts.text
		// If not specified, the agent's default language is used. Many
		// languages are supported. Note: languages must be enabled in
		// the agent before they can be used.
		language_code?: string
		parameters?: matchN(1, [#parameters, [...#parameters]])
		timeouts?: #timeouts
		training_phrases?: matchN(1, [#training_phrases, [...#training_phrases]])

		// The unique identifier of the intent.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>/intents/<Intent ID>.
		name?: string

		// The agent to create an intent for.
		// Format: projects/<Project ID>/locations/<Location
		// ID>/agents/<Agent ID>.
		parent?: string

		// The priority of this intent. Higher numbers represent higher
		// priorities.
		// If the supplied value is unspecified or 0, the service
		// translates the value to 500,000, which corresponds to the
		// Normal priority in the console.
		// If the supplied value is negative, the intent is ignored in
		// runtime detect intent requests.
		priority?: number

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#parameters: close({
		// The entity type of the parameter.
		// Format: projects/-/locations/-/agents/-/entityTypes/<System
		// Entity Type ID> for system entity types (for example,
		// projects/-/locations/-/agents/-/entityTypes/sys.date), or
		// projects/<Project ID>/locations/<Location ID>/agents/<Agent
		// ID>/entityTypes/<Entity Type ID> for developer entity types.
		entity_type!: string

		// The unique identifier of the parameter. This field is used by
		// training phrases to annotate their parts.
		id!: string

		// Indicates whether the parameter represents a list of values.
		is_list?: bool

		// Indicates whether the parameter content should be redacted in
		// log. If redaction is enabled, the parameter content will be
		// replaced by parameter name during logging.
		// Note: the parameter content is subject to redaction if either
		// parameter level redaction or entity type level redaction is
		// enabled.
		redact?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#training_phrases: close({
		parts?: matchN(1, [_#defs."/$defs/training_phrases/$defs/parts", [_, ...] & [..._#defs."/$defs/training_phrases/$defs/parts"]])

		// The unique identifier of the training phrase.
		id?: string

		// Indicates how many times this example was added to the intent.
		repeat_count?: number
	})

	_#defs: "/$defs/training_phrases/$defs/parts": close({
		// The parameter used to annotate this part of the training
		// phrase. This field is required for annotated parts of the
		// training phrase.
		parameter_id?: string

		// The text for this part.
		text!: string
	})
}
