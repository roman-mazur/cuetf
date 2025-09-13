package res

import "list"

#google_access_context_manager_service_perimeter_egress_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_context_manager_service_perimeter_egress_policy")
	close({
		// The name of the Access Policy this resource belongs to.
		access_policy_id?: string

		// The perimeter etag is internally used to prevent overwriting
		// the list of policies on PATCH calls. It is retrieved from the
		// same GET perimeter API call that's used to get the current
		// list of policies. The policy defined in this resource is added
		// or removed from that list, and then this etag is sent with the
		// PATCH call along with the updated policies.
		etag?: string
		id?:   string

		// The name of the Service Perimeter to add this resource to.
		perimeter!: string
		egress_from?: matchN(1, [#egress_from, list.MaxItems(1) & [...#egress_from]])
		egress_to?: matchN(1, [#egress_to, list.MaxItems(1) & [...#egress_to]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?:    string
		timeouts?: #timeouts
	})

	#egress_from: close({
		// Identities can be an individual user, service account, Google
		// group,
		// or third-party identity. For third-party identity, only single
		// identities
		// are supported and other identity types are not supported.The v1
		// identities
		// that have the prefix user, group and serviceAccount in
		// https://cloud.google.com/iam/docs/principal-identifiers#v1 are
		// supported.
		identities?: [...string]
		sources?: matchN(1, [_#defs."/$defs/egress_from/$defs/sources", [..._#defs."/$defs/egress_from/$defs/sources"]])

		// Specifies the type of identities that are allowed access to
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will
		// be allowed access. Possible values: ["ANY_IDENTITY",
		// "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string

		// Whether to enforce traffic restrictions based on 'sources'
		// field. If the 'sources' field is non-empty, then this field
		// must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values:
		// ["SOURCE_RESTRICTION_UNSPECIFIED",
		// "SOURCE_RESTRICTION_ENABLED", "SOURCE_RESTRICTION_DISABLED"]
		source_restriction?: string
	})

	#egress_to: close({
		// A list of external resources that are allowed to be accessed. A
		// request
		// matches if it contains an external resource in this list
		// (Example:
		// s3://bucket/path). Currently '*' is not allowed.
		external_resources?: [...string]
		operations?: matchN(1, [_#defs."/$defs/egress_to/$defs/operations", [..._#defs."/$defs/egress_to/$defs/operations"]])

		// A list of resources, currently only projects in the form
		// 'projects/<projectnumber>', that match this to stanza. A
		// request matches
		// if it contains a resource in this list. If * is specified for
		// resources,
		// then this 'EgressTo' rule will authorize access to all
		// resources outside
		// the perimeter.
		resources?: [...string]

		// A list of IAM roles that represent the set of operations that
		// the sources
		// specified in the corresponding 'EgressFrom'
		// are allowed to perform.
		roles?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/egress_from/$defs/sources": close({
		// An AccessLevel resource name that allows resources outside the
		// ServicePerimeter to be accessed from the inside.
		access_level?: string

		// A Google Cloud resource that is allowed to egress the
		// perimeter.
		// Requests from these resources are allowed to access data
		// outside the perimeter.
		// Currently only projects are allowed. Project format:
		// 'projects/{project_number}'.
		// The resource may be in any Google Cloud organization, not just
		// the
		// organization that the perimeter is defined in. '*' is not
		// allowed, the
		// case of allowing all Google Cloud resources only is not
		// supported.
		resource?: string
	})

	_#defs: "/$defs/egress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/egress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/egress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// serviceName
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/egress_to/$defs/operations/$defs/method_selectors": close({
		// Value for 'method' should be a valid method name for the
		// corresponding
		// 'serviceName' in 'ApiOperation'. If '*' used as value for
		// method,
		// then ALL methods and permissions are allowed.
		method?: string

		// Value for permission should be a valid Cloud IAM permission for
		// the
		// corresponding 'serviceName' in 'ApiOperation'.
		permission?: string
	})
}
