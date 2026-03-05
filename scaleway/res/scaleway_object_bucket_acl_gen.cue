package res

import "list"

#scaleway_object_bucket_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_object_bucket_acl")
	close({
		// ACL of the bucket: either 'private', 'public-read',
		// 'public-read-write' or 'authenticated-read'.
		acl?: string
		access_control_policy?: matchN(1, [#access_control_policy, list.MaxItems(1) & [...#access_control_policy]])

		// The bucket's name or regional ID.
		bucket!: string

		// The project ID as owner.
		expected_bucket_owner?: string
		id?:                    string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string
	})

	#access_control_policy: close({
		grant?: matchN(1, [_#defs."/$defs/access_control_policy/$defs/grant", [..._#defs."/$defs/access_control_policy/$defs/grant"]])
		owner!: matchN(1, [_#defs."/$defs/access_control_policy/$defs/owner", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/access_control_policy/$defs/owner"]])
	})

	_#defs: "/$defs/access_control_policy/$defs/grant": close({
		grantee?: matchN(1, [_#defs."/$defs/access_control_policy/$defs/grant/$defs/grantee", list.MaxItems(1) & [..._#defs."/$defs/access_control_policy/$defs/grant/$defs/grantee"]])

		// Logging permissions assigned to the grantee for the bucket.
		permission!: string
	})

	_#defs: "/$defs/access_control_policy/$defs/grant/$defs/grantee": close({
		// Display name of the grantee to grant access to.
		display_name?: string

		// The project ID owner of the grantee.
		id?: string

		// Type of grantee. Valid values: `CanonicalUser`, `Group`
		type?: string

		// The uri of the grantee if you are granting permissions to a
		// predefined group.
		uri?: string
	})

	_#defs: "/$defs/access_control_policy/$defs/owner": close({
		// The project ID of the grantee.
		display_name?: string

		// The display ID of the project.
		id!: string
	})
}
