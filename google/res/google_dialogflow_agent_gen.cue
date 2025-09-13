package res

#google_dialogflow_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dialogflow_agent")
	close({
		// API version displayed in Dialogflow console. If not specified,
		// V2 API is assumed. Clients are free to query
		// different service endpoints for different API versions.
		// However, bots connectors and webhook calls will follow
		// the specified API version.
		// * API_VERSION_V1: Legacy V1 API.
		// * API_VERSION_V2: V2 API.
		// * API_VERSION_V2_BETA_1: V2beta1 API. Possible values:
		// ["API_VERSION_V1", "API_VERSION_V2", "API_VERSION_V2_BETA_1"]
		api_version?: string

		// The URI of the agent's avatar, which are used throughout the
		// Dialogflow console. When an image URL is entered
		// into this field, the Dialogflow will save the image in the
		// backend. The address of the backend image returned
		// from the API will be shown in the [avatarUriBackend] field.
		avatar_uri?: string

		// The URI of the agent's avatar as returned from the API. Output
		// only. To provide an image URL for the agent avatar,
		// the [avatarUri] field can be used.
		avatar_uri_backend?: string

		// To filter out false positive results and still get variety in
		// matched natural language inputs for your agent,
		// you can tune the machine learning classification threshold. If
		// the returned score value is less than the threshold
		// value, then a fallback intent will be triggered or, if there
		// are no fallback intents defined, no intent will be
		// triggered. The score values range from 0.0 (completely
		// uncertain) to 1.0 (completely certain). If set to 0.0, the
		// default of 0.3 is used.
		classification_threshold?: number

		// The default language of the agent as a language tag. [See
		// Language
		// Support](https://cloud.google.com/dialogflow/docs/reference/language)
		// for a list of the currently supported language codes. This
		// field cannot be updated after creation.
		default_language_code!: string

		// The description of this agent. The maximum length is 500
		// characters. If exceeded, the request is rejected.
		description?: string

		// The name of this agent.
		display_name!: string

		// Determines whether this agent should log conversation queries.
		enable_logging?: bool
		id?:             string
		timeouts?:       #timeouts

		// Determines how intents are detected from user queries.
		// * MATCH_MODE_HYBRID: Best for agents with a small number of
		// examples in intents and/or wide use of templates
		// syntax and composite entities.
		// * MATCH_MODE_ML_ONLY: Can be used for agents with a large
		// number of examples in intents, especially the ones
		// using @sys.any or very large developer entities. Possible
		// values: ["MATCH_MODE_HYBRID", "MATCH_MODE_ML_ONLY"]
		match_mode?: string
		project?:    string

		// The list of all languages supported by this agent (except for
		// the defaultLanguageCode).
		supported_language_codes?: [...string]

		// The agent tier. If not specified, TIER_STANDARD is assumed.
		// * TIER_STANDARD: Standard tier.
		// * TIER_ENTERPRISE: Enterprise tier (Essentials).
		// * TIER_ENTERPRISE_PLUS: Enterprise tier (Plus).
		// NOTE: Due to consistency issues, the provider will not read
		// this field from the API. Drift is possible between
		// the Terraform state and Dialogflow if the agent tier is changed
		// outside of Terraform. Possible values: ["TIER_STANDARD",
		// "TIER_ENTERPRISE", "TIER_ENTERPRISE_PLUS"]
		tier?: string

		// The time zone of this agent from the [time zone
		// database](https://www.iana.org/time-zones), e.g.,
		// America/New_York,
		// Europe/Paris.
		time_zone!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
