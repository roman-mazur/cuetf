package res

import "list"

#google_cloud_identity_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_identity_group_membership")
	close({
		// If set to true, skip group member creation if a membership with
		// the same name already exists. Defaults to false.
		create_ignore_already_exists?: bool

		// The time when the Membership was created.
		create_time?: string

		// The name of the Group to create this membership in.
		group!: string

		// The resource name of the Membership, of the form
		// groups/{group_id}/memberships/{membership_id}.
		name?: string
		id?:   string
		preferred_member_key?: matchN(1, [#preferred_member_key, list.MaxItems(1) & [...#preferred_member_key]])

		// The type of the membership.
		type?: string
		roles!: matchN(1, [#roles, [_, ...] & [...#roles]])
		timeouts?: #timeouts

		// The time when the Membership was last updated.
		update_time?: string
	})

	#preferred_member_key: close({
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

	#roles: close({
		expiry_detail?: matchN(1, [_#defs."/$defs/roles/$defs/expiry_detail", list.MaxItems(1) & [..._#defs."/$defs/roles/$defs/expiry_detail"]])

		// The name of the MembershipRole. Must be one of OWNER, MANAGER,
		// MEMBER. Possible values: ["OWNER", "MANAGER", "MEMBER"]
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/roles/$defs/expiry_detail": close({
		// The time at which the MembershipRole will expire.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits.
		//
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		expire_time!: string
	})
}
