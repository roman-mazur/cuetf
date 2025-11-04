package res

import "list"

#google_cloud_identity_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_identity_group")
	close({
		// Additional group keys associated with the Group
		additional_group_keys?: [...close({
			id?:        string
			namespace?: string
		})]

		// The time when the Group was created.
		create_time?: string

		// An extended description to help users determine the purpose of
		// a Group.
		// Must not be longer than 4,096 characters.
		description?: string

		// The display name of the Group.
		display_name?: string

		// The initial configuration options for creating a Group.
		//
		// See the
		// [API
		// reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
		// for possible values. Default value: "EMPTY" Possible values:
		// ["INITIAL_GROUP_CONFIG_UNSPECIFIED", "WITH_INITIAL_OWNER",
		// "EMPTY"]
		initial_group_config?: string
		id?:                   string

		// One or more label entries that apply to the Group. Currently
		// supported labels contain a key with an empty value.
		//
		// Google Groups are the default type of group and have a label
		// with a key of
		// cloudidentity.googleapis.com/groups.discussion_forum and an
		// empty value.
		//
		// Existing Google Groups can have an additional label with a key
		// of cloudidentity.googleapis.com/groups.security and an empty
		// value added to them. This is an immutable change and the
		// security label cannot be removed once added.
		//
		// Dynamic groups have a label with a key of
		// cloudidentity.googleapis.com/groups.dynamic.
		//
		// Identity-mapped groups for Cloud Search have a label with a key
		// of system/groups/external and an empty value.
		labels!: [string]: string

		// Resource name of the Group in the format: groups/{group_id},
		// where group_id
		// is the unique ID assigned to the Group.
		name?: string
		group_key!: matchN(1, [#group_key, list.MaxItems(1) & [_, ...] & [...#group_key]])
		timeouts?: #timeouts

		// The resource name of the entity under which this Group resides
		// in the
		// Cloud Identity resource hierarchy.
		//
		// Must be of the form identitysources/{identity_source_id} for
		// external-identity-mapped
		// groups or customers/{customer_id} for Google Groups.
		parent!: string

		// The time when the Group was last updated.
		update_time?: string
	})

	#group_key: close({
		// The ID of the entity.
		//
		// For Google-managed entities, the id must be the email address
		// of an existing
		// group or user.
		//
		// For external-identity-mapped entities, the id must be a string
		// conforming
		// to the Identity Source's requirements.
		//
		// Must be unique within a namespace.
		id!: string

		// The namespace in which the entity exists.
		//
		// If not specified, the EntityKey represents a Google-managed
		// entity
		// such as a Google user or a Google Group.
		//
		// If specified, the EntityKey represents an
		// external-identity-mapped group.
		// The namespace must correspond to an identity source created in
		// Admin Console
		// and must be in the form of
		// 'identitysources/{identity_source_id}'.
		namespace?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
