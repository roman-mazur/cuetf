package res

import "list"

#google_iam_principal_access_boundary_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_principal_access_boundary_policy")
	close({
		// User defined annotations. See
		// https://google.aip.dev/148#annotations
		// for more details such as format and size limitations
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Output only. The time when the principal access boundary policy
		// was created.
		create_time?: string

		// The description of the principal access boundary policy. Must
		// be less than or equal to 63 characters.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// The etag for the principal access boundary. If this is provided
		// on update, it must match the server's etag.
		etag?: string

		// The location the principal access boundary policy is in.
		location!: string

		// Identifier. The resource name of the principal access boundary
		// policy. The following format is supported:
		// 'organizations/{organization_id}/locations/{location}/principalAccessBoundaryPolicies/{policy_id}'
		name?: string

		// The parent organization of the principal access boundary
		// policy.
		organization!: string
		id?:           string
		details?: matchN(1, [#details, list.MaxItems(1) & [...#details]])
		timeouts?: #timeouts

		// The ID to use to create the principal access boundary policy.
		// This value must start with a lowercase letter followed by up to
		// 62 lowercase letters, numbers, hyphens, or dots. Pattern,
		// /a-z{2,62}/.
		principal_access_boundary_policy_id!: string

		// Output only. The globally unique ID of the principal access
		// boundary policy.
		uid?: string

		// Output only. The time when the principal access boundary policy
		// was most recently updated.
		update_time?: string
	})

	#details: close({
		rules!: matchN(1, [_#defs."/$defs/details/$defs/rules", [_, ...] & [..._#defs."/$defs/details/$defs/rules"]])

		// The version number that indicates which Google Cloud services
		// are included in the enforcement (e.g. \"latest\", \"1\", ...).
		// If empty, the
		// PAB policy version will be set to the current latest version,
		// and this version
		// won't get updated when new versions are released.
		enforcement_version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/details/$defs/rules": close({
		// The description of the principal access boundary policy rule.
		// Must be less than or equal to 256 characters.
		description?: string

		// The access relationship of principals to the resources in this
		// rule.
		// Possible values: ALLOW
		effect!: string

		// A list of Cloud Resource Manager resources. The resource
		// and all the descendants are included. The number of resources
		// in a policy
		// is limited to 500 across all rules.
		// The following resource types are supported:
		// * Organizations, such as
		// '//cloudresourcemanager.googleapis.com/organizations/123'.
		// * Folders, such as
		// '//cloudresourcemanager.googleapis.com/folders/123'.
		// * Projects, such as
		// '//cloudresourcemanager.googleapis.com/projects/123'
		// or
		// '//cloudresourcemanager.googleapis.com/projects/my-project-id'.
		resources!: [...string]
	})
}
