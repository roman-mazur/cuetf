package res

#google_access_context_manager_authorized_orgs_desc: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_authorized_orgs_desc")
	close({
		// The type of entities that need to use the authorization
		// relationship during
		// evaluation, such as a device. Valid values are
		// "ASSET_TYPE_DEVICE" and
		// "ASSET_TYPE_CREDENTIAL_STRENGTH". Possible values:
		// ["ASSET_TYPE_DEVICE", "ASSET_TYPE_CREDENTIAL_STRENGTH"]
		asset_type?: string

		// The direction of the authorization relationship between this
		// organization
		// and the organizations listed in the "orgs" field. The valid
		// values for this
		// field include the following:
		//
		// AUTHORIZATION_DIRECTION_FROM: Allows this organization to
		// evaluate traffic
		// in the organizations listed in the 'orgs' field.
		//
		// AUTHORIZATION_DIRECTION_TO: Allows the organizations listed in
		// the 'orgs'
		// field to evaluate the traffic in this organization.
		//
		// For the authorization relationship to take effect, all of the
		// organizations
		// must authorize and specify the appropriate relationship
		// direction. For
		// example, if organization A authorized organization B and C to
		// evaluate its
		// traffic, by specifying "AUTHORIZATION_DIRECTION_TO" as the
		// authorization
		// direction, organizations B and C must specify
		// "AUTHORIZATION_DIRECTION_FROM" as the authorization direction
		// in their
		// "AuthorizedOrgsDesc" resource. Possible values:
		// ["AUTHORIZATION_DIRECTION_TO", "AUTHORIZATION_DIRECTION_FROM"]
		authorization_direction?: string

		// A granular control type for authorization levels. Valid value
		// is "AUTHORIZATION_TYPE_TRUST". Possible values:
		// ["AUTHORIZATION_TYPE_TRUST"]
		authorization_type?: string

		// Time the AuthorizedOrgsDesc was created in UTC.
		create_time?: string

		// Resource name for the 'AuthorizedOrgsDesc'. Format:
		// 'accessPolicies/{access_policy}/authorizedOrgsDescs/{authorized_orgs_desc}'.
		// The 'authorized_orgs_desc' component must begin with a letter,
		// followed by
		// alphanumeric characters or '_'.
		// After you create an 'AuthorizedOrgsDesc', you cannot change its
		// 'name'.
		name!: string

		// The list of organization ids in this AuthorizedOrgsDesc.
		// Format: 'organizations/<org_number>'
		// Example: 'organizations/123456'
		orgs?: [...string]
		id?:       string
		timeouts?: #timeouts

		// Required. Resource name for the access policy which owns this
		// 'AuthorizedOrgsDesc'.
		parent!: string

		// Time the AuthorizedOrgsDesc was updated in UTC.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
