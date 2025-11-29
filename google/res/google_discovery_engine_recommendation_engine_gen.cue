package res

import "list"

#google_discovery_engine_recommendation_engine: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_recommendation_engine")
	close({
		// Timestamp the Engine was created at.
		create_time?: string

		// The data stores associated with this engine. For
		// SOLUTION_TYPE_RECOMMENDATION type of engines, they can only
		// associate with at most one data store.
		data_store_ids!: [...string]

		// Required. The display name of the engine. Should be human
		// readable. UTF-8 encoded string with limit of 1024 characters.
		display_name!: string

		// Unique ID to use for Recommendation Engine.
		engine_id!: string
		id?:        string

		// The industry vertical that the engine registers. The
		// restriction of the Engine industry vertical is based on
		// DataStore: If unspecified, default to GENERIC. Vertical on
		// Engine has to match vertical of the DataStore liniked to the
		// engine. Default value: "GENERIC" Possible values: ["GENERIC",
		// "MEDIA"]
		industry_vertical?: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the recommendation engine.
		// Values are of the format
		// 'projects/{project}/locations/{location}/collections/{collection}/engines/{engine_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024 characters.
		name?: string
		common_config?: matchN(1, [#common_config, list.MaxItems(1) & [...#common_config]])
		media_recommendation_engine_config?: matchN(1, [#media_recommendation_engine_config, list.MaxItems(1) & [...#media_recommendation_engine_config]])
		timeouts?: #timeouts
		project?:  string

		// Timestamp the Engine was last updated.
		update_time?: string
	})

	#common_config: close({
		// The name of the company, business or entity that is associated
		// with the engine. Setting this may help improve LLM related
		// features.cd
		company_name?: string
	})

	#media_recommendation_engine_config: close({
		// The optimization objective. e.g., 'cvr'.
		// This field together with MediaRecommendationEngineConfig.type
		// describes
		// engine metadata to use to control engine training and serving.
		// Currently supported values: 'ctr', 'cvr'.
		// If not specified, we choose default based on engine type.
		// Default depends on type of recommendation:
		// 'recommended-for-you' => 'ctr'
		// 'others-you-may-like' => 'ctr'
		optimization_objective?: string

		// The training state that the engine is in (e.g. 'TRAINING' or
		// 'PAUSED').
		// Since part of the cost of running the service
		// is frequency of training - this can be used to determine when
		// to train
		// engine in order to control cost. If not specified: the default
		// value for
		// 'CreateEngine' method is 'TRAINING'. The default value for
		// 'UpdateEngine' method is to keep the state the same as before.
		// Possible values: ["PAUSED", "TRAINING"]
		training_state?: string
		engine_features_config?: matchN(1, [_#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config", list.MaxItems(1) & [..._#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config"]])

		// The type of engine. e.g., 'recommended-for-you'.
		// This field together with
		// MediaRecommendationEngineConfig.optimizationObjective
		// describes
		// engine metadata to use to control engine training and serving.
		// Currently supported values: 'recommended-for-you',
		// 'others-you-may-like',
		// 'more-like-this', 'most-popular-items'.
		type?: string
		optimization_objective_config?: matchN(1, [_#defs."/$defs/media_recommendation_engine_config/$defs/optimization_objective_config", list.MaxItems(1) & [..._#defs."/$defs/media_recommendation_engine_config/$defs/optimization_objective_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/media_recommendation_engine_config/$defs/engine_features_config": close({
		most_popular_config?: matchN(1, [_#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/most_popular_config", list.MaxItems(1) & [..._#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/most_popular_config"]])
		recommended_for_you_config?: matchN(1, [_#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/recommended_for_you_config", list.MaxItems(1) & [..._#defs."/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/recommended_for_you_config"]])
	})

	_#defs: "/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/most_popular_config": close({
		// The time window of which the engine is queried at training and
		// prediction time. Positive integers only. The value translates
		// to the
		// last X days of events. Currently required for the
		// 'most-popular-items'
		// engine.
		time_window_days?: number
	})

	_#defs: "/$defs/media_recommendation_engine_config/$defs/engine_features_config/$defs/recommended_for_you_config": close({
		// The type of event with which the engine is queried at
		// prediction time.
		// If set to 'generic', only 'view-item', 'media-play',and
		// 'media-complete' will be used as 'context-event' in engine
		// training. If
		// set to 'view-home-page', 'view-home-page' will also be used as
		// 'context-events' in addition to 'view-item', 'media-play', and
		// 'media-complete'. Currently supported for the
		// 'recommended-for-you'
		// engine. Currently supported values: 'view-home-page',
		// 'generic'.
		context_event_type?: string
	})

	_#defs: "/$defs/media_recommendation_engine_config/$defs/optimization_objective_config": close({
		// The name of the field to target. Currently supported values:
		// 'watch-percentage', 'watch-time'.
		target_field?: string

		// The threshold to be applied to the target (e.g., 0.5).
		target_field_value_float?: number
	})
}
