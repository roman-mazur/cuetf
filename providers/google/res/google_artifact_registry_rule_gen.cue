package res

import "list"

google_artifact_registry_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_artifact_registry_rule")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		timeouts?: #timeouts

		// The action this rule takes. Possible values: ["ACTION_UNSPECIFIED", "ALLOW", "DENY"]
		action?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The name of the repository's location. In addition to specific regions,
		// special values for multi-region locations are 'asia', 'europe', and 'us'.
		// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
		// or use the
		// [google_artifact_registry_locations](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/artifact_registry_locations)
		// data source for possible values.
		location?: string

		// The name of the rule, for example:
		// "projects/p1/locations/us-central1/repositories/repo1/rules/rule1".
		name?: string

		// The operation the rule applies to. Possible values: ["OPERATION_UNSPECIFIED", "DOWNLOAD"]
		operation?: string

		// The package ID the rule applies to. If empty, this rule applies to all
		// packages inside the repository.
		package_id?: string

		// The last part of the repository name, for example:
		// "repo1"
		repository_id!: string
		project?:       string

		// The rule id to use for this repository.
		rule_id!: string
	})

	#condition: close({
		// Optional. Description of the expression. This is a longer text which
		// describes the expression, e.g. when hovered over it in a UI.
		description?: string

		// Textual representation of an expression in Common Expression Language syntax.
		expression!: string

		// Optional. String indicating the location of the expression for error
		// reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string describing its purpose.
		title?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
