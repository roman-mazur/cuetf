package res

import "list"

#google_access_context_manager_service_perimeter_ingress_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_context_manager_service_perimeter_ingress_policy")
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
		ingress_from?: matchN(1, [#ingress_from, list.MaxItems(1) & [...#ingress_from]])
		ingress_to?: matchN(1, [#ingress_to, list.MaxItems(1) & [...#ingress_to]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?:    string
		timeouts?: #timeouts
	})

	#ingress_from: close({
		sources?: matchN(1, [_#defs."/$defs/ingress_from/$defs/sources", [..._#defs."/$defs/ingress_from/$defs/sources"]])

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

		// Specifies the type of identities that are allowed access from
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will be
		// allowed access. Possible values: ["ANY_IDENTITY",
		// "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string
	})

	#ingress_to: close({
		operations?: matchN(1, [_#defs."/$defs/ingress_to/$defs/operations", [..._#defs."/$defs/ingress_to/$defs/operations"]])

		// A list of resources, currently only projects in the form
		// 'projects/<projectnumber>', protected by this
		// 'ServicePerimeter'
		// that are allowed to be accessed by sources defined in the
		// corresponding 'IngressFrom'. A request matches if it contains
		// a resource in this list. If '*' is specified for resources,
		// then this 'IngressTo' rule will authorize access to all
		// resources inside the perimeter, provided that the request
		// also matches the 'operations' field.
		resources?: [...string]

		// A list of IAM roles that represent the set of operations that
		// the sources
		// specified in the corresponding 'IngressFrom'
		// are allowed to perform.
		roles?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/ingress_from/$defs/sources": close({
		// An 'AccessLevel' resource name that allow resources within the
		// 'ServicePerimeters' to be accessed from the internet.
		// 'AccessLevels' listed
		// must be in the same policy as this 'ServicePerimeter'.
		// Referencing a nonexistent
		// 'AccessLevel' will cause an error. If no 'AccessLevel' names
		// are listed,
		// resources within the perimeter can only be accessed via Google
		// Cloud calls
		// with request origins within the perimeter.
		// Example 'accessPolicies/MY_POLICY/accessLevels/MY_LEVEL.'
		// If * is specified, then all IngressSources will be allowed.
		access_level?: string

		// A Google Cloud resource that is allowed to ingress the
		// perimeter.
		// Requests from these resources will be allowed to access
		// perimeter data.
		// Currently only projects and VPCs are allowed.
		// Project format: 'projects/{projectNumber}'
		// VPC network format:
		// '//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}'.
		// The project may be in any Google Cloud organization, not just
		// the
		// organization that the perimeter is defined in. '*' is not
		// allowed, the case
		// of allowing all Google Cloud resources only is not supported.
		resource?: string
	})

	_#defs: "/$defs/ingress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/ingress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/ingress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// 'serviceName'
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/ingress_to/$defs/operations/$defs/method_selectors": close({
		// Value for method should be a valid method name for the
		// corresponding
		// serviceName in 'ApiOperation'. If '*' used as value for
		// 'method', then
		// ALL methods and permissions are allowed.
		method?: string

		// Value for permission should be a valid Cloud IAM permission for
		// the
		// corresponding 'serviceName' in 'ApiOperation'.
		permission?: string
	})
}
