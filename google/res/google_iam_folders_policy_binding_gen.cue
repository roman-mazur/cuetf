package res

import "list"

#google_iam_folders_policy_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_folders_policy_binding")
	close({
		// Optional. User defined annotations. See
		// https://google.aip.dev/148#annotations for more details such
		// as format and size limitations
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. The time when the policy binding was created.
		create_time?: string

		// Optional. The description of the policy binding. Must be less
		// than or equal to 63 characters.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Optional. The etag for the policy binding. If this is provided
		// on update, it must match the server's etag.
		etag?: string

		// The parent folder for the PolicyBinding.
		folder!: string

		// The location of the PolicyBinding.
		location!: string
		id?:       string

		// The name of the policy binding in the format
		// '{binding_parent/locations/{location}/policyBindings/{policy_binding_id}'
		name?: string

		// Required. Immutable. The resource name of the policy to be
		// bound. The binding parent and policy must belong to the same
		// Organization (or Project).
		policy!: string
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		target!: matchN(1, [#target, list.MaxItems(1) & [_, ...] & [...#target]])
		timeouts?: #timeouts

		// The Policy Binding ID.
		policy_binding_id!: string

		// Immutable. The kind of the policy to attach in this binding.
		// This
		// field must be one of the following: - Left empty (will be
		// automatically set
		// to the policy kind) - The input policy kind Possible values:
		// POLICY_KIND_UNSPECIFIED PRINCIPAL_ACCESS_BOUNDARY ACCESS
		policy_kind?: string

		// Output only. The globally unique ID of the policy to be bound.
		policy_uid?: string

		// Output only. The globally unique ID of the policy binding.
		// Assigned when the policy binding is created.
		uid?: string

		// Output only. The time when the policy binding was most recently
		// updated.
		update_time?: string
	})

	#condition: close({
		// Optional. Description of the expression. This is a longer text
		// which describes the expression, e.g. when hovered over it in a
		// UI.
		description?: string

		// Textual representation of an expression in Common Expression
		// Language syntax.
		expression?: string

		// Optional. String indicating the location of the expression for
		// error reporting, e.g. a file name and a position in the file.
		location?: string

		// Optional. Title for the expression, i.e. a short string
		// describing its purpose. This can be used e.g. in UIs which
		// allow to enter the expression.
		title?: string
	})

	#target: close({
		// Required. Immutable. Full Resource Name of the principal set
		// used for principal access boundary policy bindings.
		// Examples for each one of the following supported principal set
		// types:
		// * Folder:
		// '//cloudresourcemanager.googleapis.com/folders/FOLDER_ID'
		// It must be parent by the policy binding's parent (the folder).
		principal_set?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
