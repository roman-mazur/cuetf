package res

import "list"

#google_artifact_registry_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_artifact_registry_rule")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		timeouts?: #timeouts

		// The action this rule takes. Possible values:
		// ["ACTION_UNSPECIFIED", "ALLOW", "DENY"]
		action?: string
		id?:     string

		// The name of the repository's location. In addition to specific
		// regions,
		// special values for multi-region locations are 'asia', 'europe',
		// and 'us'.
		// See
		// [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
		// or use the
		// [google_artifact_registry_locations](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/artifact_registry_locations)
		// data source for possible values.
		location?: string

		// The name of the rule, for example:
		// "projects/p1/locations/us-central1/repositories/repo1/rules/rule1".
		name?: string

		// The operation the rule applies to. Possible values:
		// ["OPERATION_UNSPECIFIED", "DOWNLOAD"]
		operation?: string

		// The package ID the rule applies to. If empty, this rule applies
		// to all
		// packages inside the repository.
		package_id?: string
		project?:    string

		// The last part of the repository name, for example:
		// "repo1"
		repository_id!: string

		// The rule id to use for this repository.
		rule_id!: string
	})

	#condition: close({
		// Optional. Description of the expression. This is a longer text
		// which
		// describes the expression, e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression!: string

		// Optional. String indicating the location of the expression for
		// error
		// reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string
		// describing its purpose.
		title?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
