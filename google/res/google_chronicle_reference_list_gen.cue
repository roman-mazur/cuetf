package res

import "list"

#google_chronicle_reference_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_chronicle_reference_list")
	close({
		// Required. A user-provided description of the reference list.
		description!: string

		// Output only. The unique display name of the reference list.
		display_name?: string
		id?:           string

		// The unique identifier for the Chronicle instance, which is the
		// same as the customer ID.
		instance!: string

		// The location of the resource. This is the geographical region
		// where the Chronicle instance resides, such as "us" or
		// "europe-west2".
		location!: string

		// Output only. The resource name of the reference list.
		// Format:
		// projects/{project}/locations/{location}/instances/{instance}/referenceLists/{reference_list}
		name?:    string
		project?: string

		// Required. The ID to use for the reference list. This is also
		// the display name for
		// the reference list. It must satisfy the following requirements:
		// - Starts with letter.
		// - Contains only letters, numbers and underscore.
		// - Has length < 256.
		// - Must be unique.
		reference_list_id!: string

		// Output only. The timestamp when the reference list was last
		// updated.
		revision_create_time?: string
		entries!: matchN(1, [#entries, [_, ...] & [...#entries]])
		scope_info?: matchN(1, [#scope_info, list.MaxItems(1) & [...#scope_info]])
		timeouts?: #timeouts

		// Output only. The count of self-authored rules using the
		// reference list.
		rule_associations_count?: number

		// Output only. The resource names for the associated
		// self-authored Rules that use this
		// reference list.
		// This is returned only when the view is
		// REFERENCE_LIST_VIEW_FULL.
		rules?: [...string]

		// Possible values:
		// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
		// REFERENCE_LIST_SYNTAX_TYPE_REGEX
		// REFERENCE_LIST_SYNTAX_TYPE_CIDR
		syntax_type!: string
	})

	#entries: close({
		// Required. The value of the entry. Maximum length is 512
		// characters.
		value!: string
	})

	#scope_info: close({
		reference_list_scope?: matchN(1, [_#defs."/$defs/scope_info/$defs/reference_list_scope", list.MaxItems(1) & [..._#defs."/$defs/scope_info/$defs/reference_list_scope"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/scope_info/$defs/reference_list_scope": close({
		// Optional. The list of scope names of the reference list. The
		// scope names should be
		// full resource names and should be of the format:
		// "projects/{project}/locations/{location}/instances/{instance}/dataAccessScopes/{scope_name}".
		scope_names?: [...string]
	})
}
