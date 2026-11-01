package res

import "list"

google_resource_manager_boundary: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_resource_manager_boundary")
	close({
		resource_filter?: matchN(1, [#resource_filter, list.MaxItems(1) & [...#resource_filter]])
		timeouts?: #timeouts

		// The user-assigned ID for the Boundary, which becomes the final component
		// of the Boundary's resource name. Must be unique within the parent.
		// Must be 6 to 30 lowercase ASCII letters, digits, or hyphens, must start
		// with a letter, and may not end with a hyphen.
		boundary_id!: string

		// The creation time of the Boundary.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human-readable display name of the Boundary. When present it must be
		// between 4 and 30 characters. Allowed characters are lowercase and
		// uppercase letters, numbers, hyphen, single-quote, double-quote, space,
		// and exclamation point.
		display_name?: string

		// A checksum computed by the server based on the value of other fields. May
		// be sent on update requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string
		id?:   string

		// The Management Project associated with this Boundary, in the form
		// 'projects/{project_number}'. This is populated by the service when the
		// Boundary is associated with a CapabilityConfig; it cannot be set directly
		// on the Boundary. To choose a management project, set it on the
		// 'google_resource_manager_capability_config' resource instead.
		management_project?: string

		// The unique resource name of the Boundary, in the form
		// 'organizations/{organization_id}/boundaries/{boundary_id}' or
		// 'folders/{folder_id}/boundaries/{boundary_id}'.
		name?: string

		// The parent resource under which the Boundary is created. Must be of the
		// form 'organizations/{organization_id}' or 'folders/{folder_id}'.
		parent!: string

		// The lifecycle state of the Boundary. Possible values are 'CREATING' and
		// 'ACTIVE'.
		state?: string

		// The most recent time this Boundary was modified.
		update_time?: string
	})

	#resource_filter: close({
		tag_filter!: matchN(1, [_#defs."/$defs/resource_filter/$defs/tag_filter", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/resource_filter/$defs/tag_filter"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/resource_filter/$defs/tag_filter": close({
		// The namespaced name of the tag key, in the form
		// '{parent_id}/{tag_key_short_name}', for example '123456789012/env'.
		tag_key!: string

		// The allowed short name of the tag value, for example 'production'.
		// A project matches this tag filter if its effective tag value for
		// the given 'tagKey' matches this value.
		tag_value!: string
	})
}
