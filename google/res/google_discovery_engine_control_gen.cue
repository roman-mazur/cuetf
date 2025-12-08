package res

import "list"

#google_discovery_engine_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_control")
	close({
		// The collection ID. Currently only accepts "default_collection".
		collection_id?: string

		// The unique id of the control.
		control_id!: string

		// The display name of the control. This field must be a UTF-8
		// encoded
		// string with a length limit of 128 characters.
		display_name!: string

		// The engine to add the control to.
		engine_id!: string
		id?:        string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the control. Values are of the
		// format
		// 'projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/controls/{control_id}'.
		// This field must be a UTF-8 encoded string with a length limit
		// of 1024
		// characters.
		name?: string
		boost_action?: matchN(1, [#boost_action, list.MaxItems(1) & [...#boost_action]])
		conditions?: matchN(1, [#conditions, [...#conditions]])
		filter_action?: matchN(1, [#filter_action, list.MaxItems(1) & [...#filter_action]])
		promote_action?: matchN(1, [#promote_action, list.MaxItems(1) & [...#promote_action]])
		redirect_action?: matchN(1, [#redirect_action, list.MaxItems(1) & [...#redirect_action]])
		synonyms_action?: matchN(1, [#synonyms_action, list.MaxItems(1) & [...#synonyms_action]])
		project?:  string
		timeouts?: #timeouts

		// The solution type that the control belongs to. Possible values:
		// ["SOLUTION_TYPE_RECOMMENDATION", "SOLUTION_TYPE_SEARCH",
		// "SOLUTION_TYPE_CHAT", "SOLUTION_TYPE_GENERATIVE_CHAT"]
		solution_type!: string

		// The use cases that the control is used for. Possible values:
		// ["SEARCH_USE_CASE_SEARCH", "SEARCH_USE_CASE_BROWSE"]
		use_cases?: [...string]
	})

	#boost_action: close({
		// The data store to boost.
		data_store!: string
		interpolation_boost_spec?: matchN(1, [_#defs."/$defs/boost_action/$defs/interpolation_boost_spec", list.MaxItems(1) & [..._#defs."/$defs/boost_action/$defs/interpolation_boost_spec"]])

		// The filter to apply to the search results.
		filter!: string

		// The fixed boost value to apply to the search results. Positive
		// values will increase the relevance of the results, while
		// negative values will decrease the relevance. The value must be
		// between -100 and 100.
		fixed_boost?: number
	})

	#conditions: close({
		active_time_range?: matchN(1, [_#defs."/$defs/conditions/$defs/active_time_range", [..._#defs."/$defs/conditions/$defs/active_time_range"]])
		query_terms?: matchN(1, [_#defs."/$defs/conditions/$defs/query_terms", [..._#defs."/$defs/conditions/$defs/query_terms"]])

		// The regular expression that the query must match for this
		// condition to be met.
		query_regex?: string
	})

	#filter_action: close({
		// The data store to filter.
		data_store!: string

		// The filter to apply to the search results.
		filter!: string
	})

	#promote_action: close({
		search_link_promotion!: matchN(1, [_#defs."/$defs/promote_action/$defs/search_link_promotion", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/promote_action/$defs/search_link_promotion"]])

		// The data store to promote.
		data_store!: string
	})

	#redirect_action: close({
		// The URI to redirect to.
		redirect_uri!: string
	})

	#synonyms_action: close({
		// The synonyms to apply to the search results.
		synonyms?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/boost_action/$defs/interpolation_boost_spec": close({
		// The attribute type to be used to determine the boost amount.
		// Possible values: ["NUMERICAL", "FRESHNESS"]
		attribute_type?: string
		control_point?: matchN(1, [_#defs."/$defs/boost_action/$defs/interpolation_boost_spec/$defs/control_point", list.MaxItems(1) & [..._#defs."/$defs/boost_action/$defs/interpolation_boost_spec/$defs/control_point"]])

		// The name of the field whose value will be used to determine the
		// boost amount.
		field_name?: string

		// The interpolation type to be applied to connect the control
		// points. Possible values: ["LINEAR"]
		interpolation_type?: string
	})

	_#defs: "/$defs/boost_action/$defs/interpolation_boost_spec/$defs/control_point": close({
		// The attribute value of the control point.
		attribute_value?: string

		// The value between -1 to 1 by which to boost the score if the
		// attributeValue
		// evaluates to the value specified above.
		boost_amount?: number
	})

	_#defs: "/$defs/conditions/$defs/active_time_range": close({
		// The end time of the active time range.
		end_time?: string

		// The start time of the active time range.
		start_time?: string
	})

	_#defs: "/$defs/conditions/$defs/query_terms": close({
		// If true, the query term must be an exact match. Otherwise, the
		// query term can be a partial match.
		full_match?: bool

		// The value of the query term.
		value?: string
	})

	_#defs: "/$defs/promote_action/$defs/search_link_promotion": close({
		// The description of the promoted link.
		description?: string

		// The document to promote.
		document?: string

		// Return promotions for basic site search.
		enabled?: bool

		// The image URI of the promoted link.
		image_uri?: string

		// The title of the promoted link.
		title!: string

		// The URI to promote.
		uri?: string
	})
}
