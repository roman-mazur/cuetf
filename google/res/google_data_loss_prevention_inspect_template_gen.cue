package res

import "list"

#google_data_loss_prevention_inspect_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_loss_prevention_inspect_template")
	close({
		// A description of the inspect template.
		description?: string

		// User set display name of the inspect template.
		display_name?: string
		id?:           string

		// The resource name of the inspect template. Set by the server.
		name?: string
		inspect_config?: matchN(1, [#inspect_config, list.MaxItems(1) & [...#inspect_config]])

		// The parent of the inspect template in any of the following
		// formats:
		//
		// * 'projects/{{project}}'
		// * 'projects/{{project}}/locations/{{location}}'
		// * 'organizations/{{organization_id}}'
		// * 'organizations/{{organization_id}}/locations/{{location}}'
		parent!: string

		// The template id can contain uppercase and lowercase letters,
		// numbers, and hyphens;
		// that is, it must match the regular expression: [a-zA-Z\d-_]+.
		// The maximum length is
		// 100 characters. Can be empty to allow the system to generate
		// one.
		template_id?: string
		timeouts?:    #timeouts
	})

	#inspect_config: close({
		// List of options defining data content to scan. If empty, text,
		// images, and other content will be included. Possible values:
		// ["CONTENT_TEXT", "CONTENT_IMAGE"]
		content_options?: [...string]

		// When true, excludes type information of the findings.
		exclude_info_types?: bool
		custom_info_types?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types", [..._#defs."/$defs/inspect_config/$defs/custom_info_types"]])

		// When true, a contextual quote from the data that triggered a
		// finding is included in the response.
		include_quote?: bool
		info_types?: matchN(1, [_#defs."/$defs/inspect_config/$defs/info_types", [..._#defs."/$defs/inspect_config/$defs/info_types"]])

		// Only returns findings equal or above this threshold. See
		// https://cloud.google.com/dlp/docs/likelihood for more info
		// Default value: "POSSIBLE" Possible values: ["VERY_UNLIKELY",
		// "UNLIKELY", "POSSIBLE", "LIKELY", "VERY_LIKELY"]
		min_likelihood?: string
		limits?: matchN(1, [_#defs."/$defs/inspect_config/$defs/limits", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/limits"]])
		rule_set?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set", [..._#defs."/$defs/inspect_config/$defs/rule_set"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types": close({
		dictionary?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary"]])
		info_type!: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/info_type", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/info_type"]])

		// If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a
		// finding to be returned. It still can be used for rules
		// matching. Possible values: ["EXCLUSION_TYPE_EXCLUDE"]
		exclusion_type?: string

		// Likelihood to return for this CustomInfoType. This base value
		// can be altered by a detection rule if the finding meets the
		// criteria
		// specified by the rule. Default value: "VERY_LIKELY" Possible
		// values: ["VERY_UNLIKELY", "UNLIKELY", "POSSIBLE", "LIKELY",
		// "VERY_LIKELY"]
		likelihood?: string
		regex?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/regex"]])
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score"]])
		stored_type?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type"]])
		surrogate_type?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type"]])
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary": close({
		cloud_storage_path?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path"]])
		word_list?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list"]])
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/cloud_storage_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/dictionary/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one
		// phrase and every phrase must contain at least 2 characters that
		// are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names
		// listed at https://cloud.google.com/dlp/docs/infotypes-reference
		// when specifying a built-in type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/regex": close({
		// The index of the submatch to extract as findings. When not
		// specified, the entire match is returned. No more than 3 may be
		// included.
		group_indexes?: [...number]

		// Pattern defining the regular expression.
		// Its syntax (https://github.com/google/re2/wiki/Syntax) can be
		// found under the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/stored_type": close({
		// Resource name of the requested StoredInfoType, for example
		// 'organizations/433245324/storedInfoTypes/432452342'
		// or 'projects/project-id/storedInfoTypes/432452342'.
		name!: string
	})

	_#defs: "/$defs/inspect_config/$defs/custom_info_types/$defs/surrogate_type": close({})

	_#defs: "/$defs/inspect_config/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version of the information type to use. By default, the version
		// is set to stable
		version?: string
	})

	_#defs: "/$defs/inspect_config/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/limits": close({
		max_findings_per_info_type?: matchN(1, [_#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type", [..._#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type"]])

		// Max number of findings that will be returned for each item
		// scanned. The maximum returned is 2000.
		max_findings_per_item!: number

		// Max number of findings that will be returned per request/job.
		// The maximum returned is 2000.
		max_findings_per_request!: number
	})

	_#defs: "/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type": close({
		info_type?: matchN(1, [_#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type"]])

		// Max findings limit for the given infoType.
		max_findings!: number
	})

	_#defs: "/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/inspect_config/$defs/limits/$defs/max_findings_per_info_type/$defs/info_type/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set": close({
		info_types!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/info_types", [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/info_types"]])
		rules!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules", [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules": close({
		exclusion_rule?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule"]])
		hotword_rule?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule": close({
		dictionary?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary"]])
		exclude_by_hotword?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword"]])
		exclude_info_types?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types"]])
		regex?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex"]])

		// How the rule is applied. See the documentation for more
		// information:
		// https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType
		// Possible values: ["MATCHING_TYPE_FULL_MATCH",
		// "MATCHING_TYPE_PARTIAL_MATCH", "MATCHING_TYPE_INVERSE_MATCH"]
		matching_type!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary": close({
		cloud_storage_path?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path"]])
		word_list?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/cloud_storage_path": close({
		// A url representing a file or path (no wildcards) in Cloud
		// Storage. Example: 'gs://[BUCKET_NAME]/dictionary.txt'
		path!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/dictionary/$defs/word_list": close({
		// Words or phrases defining the dictionary. The dictionary must
		// contain at least one
		// phrase and every phrase must contain at least 2 characters that
		// are letters or digits.
		words!: [...string]
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword": close({
		hotword_regex!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex"]])
		proximity!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/hotword_regex": close({
		// The index of the submatch to extract as findings. When not
		// specified,
		// the entire match is returned. No more than 3 may be included.
		group_indexes?: [...number]

		// Pattern defining the regular expression. Its syntax
		// (https://github.com/google/re2/wiki/Syntax) can be found under
		// the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_by_hotword/$defs/proximity": close({
		// Number of characters after the finding to consider.
		window_after?: number

		// Number of characters before the finding to consider.
		window_before?: number
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types": close({
		info_types!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types", [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types": close({
		sensitivity_score?: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score", list.MaxItems(1) & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score"]])

		// Name of the information type. Either a name of your choosing
		// when creating a CustomInfoType, or one of the names listed
		// at https://cloud.google.com/dlp/docs/infotypes-reference when
		// specifying a built-in type.
		name!: string

		// Version name for this InfoType.
		version?: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/exclude_info_types/$defs/info_types/$defs/sensitivity_score": close({
		// The sensitivity score applied to the resource. Possible values:
		// ["SENSITIVITY_LOW", "SENSITIVITY_MODERATE",
		// "SENSITIVITY_HIGH"]
		score!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/exclusion_rule/$defs/regex": close({
		// The index of the submatch to extract as findings. When not
		// specified, the entire match is returned. No more than 3 may be
		// included.
		group_indexes?: [...number]

		// Pattern defining the regular expression.
		// Its syntax (https://github.com/google/re2/wiki/Syntax) can be
		// found under the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule": close({
		hotword_regex!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex"]])
		likelihood_adjustment!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment"]])
		proximity!: matchN(1, [_#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity"]])
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/hotword_regex": close({
		// The index of the submatch to extract as findings. When not
		// specified,
		// the entire match is returned. No more than 3 may be included.
		group_indexes?: [...number]

		// Pattern defining the regular expression. Its syntax
		// (https://github.com/google/re2/wiki/Syntax) can be found under
		// the google/re2 repository on GitHub.
		pattern!: string
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/likelihood_adjustment": close({
		// Set the likelihood of a finding to a fixed value. Either this
		// or relative_likelihood can be set. Possible values:
		// ["VERY_UNLIKELY", "UNLIKELY", "POSSIBLE", "LIKELY",
		// "VERY_LIKELY"]
		fixed_likelihood?: string

		// Increase or decrease the likelihood by the specified number of
		// levels. For example,
		// if a finding would be POSSIBLE without the detection rule and
		// relativeLikelihood is 1,
		// then it is upgraded to LIKELY, while a value of -1 would
		// downgrade it to UNLIKELY.
		// Likelihood may never drop below VERY_UNLIKELY or exceed
		// VERY_LIKELY, so applying an
		// adjustment of 1 followed by an adjustment of -1 when base
		// likelihood is VERY_LIKELY
		// will result in a final likelihood of LIKELY. Either this or
		// fixed_likelihood can be set.
		relative_likelihood?: number
	})

	_#defs: "/$defs/inspect_config/$defs/rule_set/$defs/rules/$defs/hotword_rule/$defs/proximity": close({
		// Number of characters after the finding to consider. Either this
		// or window_before must be specified
		window_after?: number

		// Number of characters before the finding to consider. Either
		// this or window_after must be specified
		window_before?: number
	})
}
