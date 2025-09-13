package res

import "list"

#google_bigquery_dataset_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_dataset_access")
	close({
		// If true, represents that that the iam_member in the config was
		// translated to a different member type by the API, and is
		// stored in state as a different member type
		api_updated_member?: bool

		// A unique ID for this dataset, without the project name. The ID
		// must contain only letters (a-z, A-Z), numbers (0-9), or
		// underscores (_). The maximum length is 1,024 characters.
		dataset_id!: string

		// A domain to grant access to. Any users signed in with the
		// domain specified will be granted the specified access
		domain?: string

		// An email address of a Google Group to grant access to.
		group_by_email?: string

		// Some other type of member that appears in the IAM Policy but
		// isn't a user,
		// group, domain, or special group. For example: 'allUsers'
		iam_member?: string
		id?:         string
		project?:    string

		// Describes the rights granted to the user specified by the other
		// member of the access object. Basic, predefined, and custom
		// roles are
		// supported. Predefined roles that have equivalent basic roles
		// are
		// swapped by the API to their basic counterparts, and will show a
		// diff
		// post-create. See
		// [official
		// docs](https://cloud.google.com/bigquery/docs/access-control).
		role?: string
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		dataset?: matchN(1, [#dataset, list.MaxItems(1) & [...#dataset]])
		routine?: matchN(1, [#routine, list.MaxItems(1) & [...#routine]])
		timeouts?: #timeouts
		view?: matchN(1, [#view, list.MaxItems(1) & [...#view]])

		// A special group to grant access to. Possible values include:
		// * 'projectOwners': Owners of the enclosing project.
		// * 'projectReaders': Readers of the enclosing project.
		// * 'projectWriters': Writers of the enclosing project.
		// * 'allAuthenticatedUsers': All authenticated BigQuery users.
		special_group?: string

		// An email address of a user to grant access to. For example:
		// fred@example.com
		user_by_email?: string
	})

	#condition: close({
		// Description of the expression. This is a longer text which
		// describes the expression,
		// e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// String indicating the location of the expression for error
		// reporting, e.g. a file
		// name and a position in the file.
		location?: string

		// Title for the expression, i.e. a short string describing its
		// purpose.
		// This can be used e.g. in UIs which allow to enter the
		// expression.
		title?: string
	})

	#dataset: close({
		dataset?: matchN(1, [_#defs."/$defs/dataset/$defs/dataset", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/dataset/$defs/dataset"]])

		// Which resources in the dataset this entry applies to.
		// Currently, only views are supported,
		// but additional target types may be added in the future.
		// Possible values: VIEWS
		target_types!: [...string]
	})

	#routine: close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string

		// The ID of the routine. The ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_). The maximum length
		// is 256 characters.
		routine_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	#view: close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string

		// The ID of the table. The ID must contain only letters (a-z,
		// A-Z), numbers (0-9), or underscores (_). The maximum length
		// is 1,024 characters.
		table_id!: string
	})

	_#defs: "/$defs/dataset/$defs/dataset": close({
		// The ID of the dataset containing this table.
		dataset_id!: string

		// The ID of the project containing this table.
		project_id!: string
	})
}
