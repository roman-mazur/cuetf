package data

import "list"

#google_cloud_identity_group_lookup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_cloud_identity_group_lookup")
	close({
		group_key?: matchN(1, [#group_key, list.MaxItems(1) & [_, ...] & [...#group_key]])
		id?: string

		// The [resource
		// name](https://cloud.google.com/apis/design/resource_names) of
		// the looked-up Group.
		name?: string
	})

	#group_key: close({
		// The ID of the entity. For Google-managed entities, the id
		// should be the email address of an existing group or user.
		// For external-identity-mapped entities, the id must be a string
		// conforming to the Identity Source's requirements.
		// Must be unique within a namespace.
		id!: string

		// The namespace in which the entity exists. If not specified, the
		// EntityKey represents a Google-managed entity such as a Google
		// user or a Google Group.
		// If specified, the EntityKey represents an
		// external-identity-mapped group. The namespace must correspond
		// to an identity source created in Admin Console and must be in
		// the form of identitysources/{identity_source}.
		namespace?: string
	})
}
