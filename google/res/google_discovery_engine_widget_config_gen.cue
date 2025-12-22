package res

import "list"

#google_discovery_engine_widget_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_widget_config")
	close({
		// The collection ID.
		collection_id?: string

		// The engine ID.
		engine_id!: string
		access_settings?: matchN(1, [#access_settings, list.MaxItems(1) & [...#access_settings]])

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string
		id?:       string

		// The full resource name of the widget config. Format:
		// 'projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/widgetConfigs/{widget_config_id}'.
		name?: string
		homepage_setting?: matchN(1, [#homepage_setting, list.MaxItems(1) & [...#homepage_setting]])
		timeouts?: #timeouts
		ui_branding?: matchN(1, [#ui_branding, list.MaxItems(1) & [...#ui_branding]])
		project?: string
		ui_settings?: matchN(1, [#ui_settings, list.MaxItems(1) & [...#ui_settings]])

		// The unique ID to use for the WidgetConfig. Currently only
		// accepts "default_search_widget_config".
		widget_config_id?: string
	})

	#access_settings: close({
		// Whether public unauthenticated access is allowed.
		allow_public_access?: bool

		// List of domains that are allowed to integrate the search
		// widget.
		allowlisted_domains?: [...string]

		// Whether web app access is enabled.
		enable_web_app?: bool

		// Language code for user interface. Use language tags defined by
		// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). If
		// unset, the
		// default language code is "en-US".
		language_code?: string

		// The workforce identity pool provider used to access the widget.
		workforce_identity_pool_provider?: string
	})

	#homepage_setting: close({
		shortcuts?: matchN(1, [_#defs."/$defs/homepage_setting/$defs/shortcuts", [..._#defs."/$defs/homepage_setting/$defs/shortcuts"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#ui_branding: close({
		logo?: matchN(1, [_#defs."/$defs/ui_branding/$defs/logo", list.MaxItems(1) & [..._#defs."/$defs/ui_branding/$defs/logo"]])
	})

	#ui_settings: close({
		// The default ordering for search results if specified.
		// Used to set SearchRequest#orderBy on applicable requests.
		default_search_request_order_by?: string

		// If set to true, the widget will not collect user events.
		disable_user_events_collection?: bool

		// Whether or not to enable autocomplete.
		enable_autocomplete?: bool

		// If set to true, the widget will enable the create agent button.
		enable_create_agent_button?: bool

		// If set to true, the widget will enable people search.
		enable_people_search?: bool

		// Turn on or off collecting the search result quality feedback
		// from end users.
		enable_quality_feedback?: bool

		// Whether to enable safe search.
		enable_safe_search?: bool

		// Whether to enable search-as-you-type behavior for the search
		// widget.
		enable_search_as_you_type?: bool
		data_store_ui_configs?: matchN(1, [_#defs."/$defs/ui_settings/$defs/data_store_ui_configs", [..._#defs."/$defs/ui_settings/$defs/data_store_ui_configs"]])
		generative_answer_config?: matchN(1, [_#defs."/$defs/ui_settings/$defs/generative_answer_config", list.MaxItems(1) & [..._#defs."/$defs/ui_settings/$defs/generative_answer_config"]])

		// If set to true, the widget will enable visual content summary
		// on applicable
		// search requests. Only used by healthcare search.
		enable_visual_content_summary?: bool

		// Describes widget (or web app) interaction type Possible values:
		// ["SEARCH_ONLY", "SEARCH_WITH_ANSWER",
		// "SEARCH_WITH_FOLLOW_UPS"]
		interaction_type?: string

		// Controls whether result extract is display and how (snippet or
		// extractive answer).
		// Default to no result if unspecified. Possible values:
		// ["SNIPPET", "EXTRACTIVE_ANSWER"]
		result_description_type?: string
	})

	_#defs: "/$defs/homepage_setting/$defs/shortcuts": close({
		icon?: matchN(1, [_#defs."/$defs/homepage_setting/$defs/shortcuts/$defs/icon", list.MaxItems(1) & [..._#defs."/$defs/homepage_setting/$defs/shortcuts/$defs/icon"]])

		// Destination URL of shortcut.
		destination_uri?: string

		// Title of the shortcut.
		title?: string
	})

	_#defs: "/$defs/homepage_setting/$defs/shortcuts/$defs/icon": close({
		// Image URL.
		url?: string
	})

	_#defs: "/$defs/ui_branding/$defs/logo": close({
		// Image URL.
		url?: string
	})

	_#defs: "/$defs/ui_settings/$defs/data_store_ui_configs": close({
		facet_field?: matchN(1, [_#defs."/$defs/ui_settings/$defs/data_store_ui_configs/$defs/facet_field", [..._#defs."/$defs/ui_settings/$defs/data_store_ui_configs/$defs/facet_field"]])
		fields_ui_components_map?: matchN(1, [_#defs."/$defs/ui_settings/$defs/data_store_ui_configs/$defs/fields_ui_components_map", [..._#defs."/$defs/ui_settings/$defs/data_store_ui_configs/$defs/fields_ui_components_map"]])

		// The name of the data store. It should be data store resource
		// name. Format:
		// 'projects/{project}/locations/{location}/collections/{collectionId}/dataStores/{dataStoreId}'.
		// For APIs under 'WidgetService', such as
		// [WidgetService.LookUpWidgetConfig][],
		// the project number and location part is erased in this field.
		name?: string
	})

	_#defs: "/$defs/ui_settings/$defs/data_store_ui_configs/$defs/facet_field": close({
		// The field name that end users will see.
		display_name?: string

		// Registered field name. The format is 'field.abc'.
		field!: string
	})

	_#defs: "/$defs/ui_settings/$defs/data_store_ui_configs/$defs/fields_ui_components_map": close({
		// Possible values: ["MOBILE", "DESKTOP"]
		device_visibility?: [...string]

		// The template to customize how the field is displayed.
		// An example value would be a string that looks like: "Price:
		// {value}".
		display_template?: string

		// Registered field name. The format is 'field.abc'.
		field!:        string
		ui_component!: string
	})

	_#defs: "/$defs/ui_settings/$defs/generative_answer_config": close({
		// Whether generated answer contains suggested related questions.
		disable_related_questions?: bool

		// Specifies whether to filter out queries that are adversarial.
		ignore_adversarial_query?: bool

		// Specifies whether to filter out queries that are not relevant
		// to the content.
		ignore_low_relevant_content?: bool

		// Specifies whether to filter out queries that are not
		// answer-seeking.
		// The default value is 'false'. No answer is returned if the
		// search query
		// is classified as a non-answer seeking query.
		// If this field is set to 'true', we skip generating answers for
		// non-answer seeking queries and return fallback messages
		// instead.
		ignore_non_answer_seeking_query?: bool

		// Source of image returned in the answer. Possible values:
		// ["ALL_AVAILABLE_SOURCES", "CORPUS_IMAGE_ONLY",
		// "FIGURE_GENERATION_ONLY"]
		image_source?: string

		// Language code for Summary. Use language tags defined by
		// [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note:
		// This
		// is an experimental feature.
		language_code?: string

		// Max rephrase steps. The max number is 5 steps. If not set or
		// set to < 1, it will be set to 1 by default.
		max_rephrase_steps?: number

		// Text at the beginning of the prompt that instructs the model
		// that generates the answer.
		model_prompt_preamble?: string

		// The model version used to generate the answer.
		model_version?: string

		// The number of top results to generate the answer from. Up to
		// 10.
		result_count?: number
	})
}
