package res

import "list"

#google_access_context_manager_service_perimeters: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_access_context_manager_service_perimeters")
	close({
		service_perimeters?: matchN(1, [#service_perimeters, [...#service_perimeters]])
		timeouts?: #timeouts
		id?:       string

		// The AccessPolicy this ServicePerimeter lives in.
		// Format: accessPolicies/{policy_id}
		parent!: string
	})

	#service_perimeters: close({
		// Time the AccessPolicy was created in UTC.
		create_time?: string

		// Description of the ServicePerimeter and its use. Does not
		// affect
		// behavior.
		description?: string

		// Resource name for the ServicePerimeter. The short_name
		// component must
		// begin with a letter and only include alphanumeric and '_'.
		// Format:
		// accessPolicies/{policy_id}/servicePerimeters/{short_name}
		name!: string

		// Specifies the type of the Perimeter. There are two types:
		// regular and
		// bridge. Regular Service Perimeter contains resources, access
		// levels,
		// and restricted services. Every resource can be in at most
		// ONE regular Service Perimeter.
		//
		// In addition to being in a regular service perimeter, a resource
		// can also
		// be in zero or more perimeter bridges. A perimeter bridge only
		// contains
		// resources. Cross project operations are permitted if all
		// effected
		// resources share some perimeter (whether bridge or regular).
		// Perimeter
		// Bridge does not contain access levels or services: those are
		// governed
		// entirely by the regular perimeter that resource is in.
		//
		// Perimeter Bridges are typically useful when building more
		// complex
		// topologies with many independent perimeters that need to share
		// some data
		// with a common perimeter, but should not be able to share data
		// among
		// themselves. Default value: "PERIMETER_TYPE_REGULAR" Possible
		// values: ["PERIMETER_TYPE_REGULAR", "PERIMETER_TYPE_BRIDGE"]
		perimeter_type?: string

		// Human readable title. Must be unique within the Policy.
		title!: string
		spec?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec"]])
		status?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status"]])

		// Time the AccessPolicy was updated in UTC.
		update_time?: string

		// Use explicit dry run spec flag. Ordinarily, a dry-run spec
		// implicitly exists
		// for all Service Perimeters, and that spec is identical to the
		// status for those
		// Service Perimeters. When this flag is set, it inhibits the
		// generation of the
		// implicit spec, thereby allowing the user to explicitly provide
		// a
		// configuration ("spec") to use in a dry-run version of the
		// Service Perimeter.
		// This allows the user to test changes to the enforced config
		// ("status") without
		// actually enforcing them. This testing is done through analyzing
		// the differences
		// between currently enforced and suggested restrictions.
		// useExplicitDryRunSpec must
		// bet set to True if any of the fields in the spec are set to
		// non-default values.
		use_explicit_dry_run_spec?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec": close({
		// A list of AccessLevel resource names that allow resources
		// within
		// the ServicePerimeter to be accessed from the internet.
		// AccessLevels listed must be in the same policy as this
		// ServicePerimeter. Referencing a nonexistent AccessLevel is a
		// syntax error. If no AccessLevel names are listed, resources
		// within
		// the perimeter can only be accessed via GCP calls with request
		// origins within the perimeter. For Service Perimeter Bridge,
		// must
		// be empty.
		//
		// Format:
		// accessPolicies/{policy_id}/accessLevels/{access_level_name}
		access_levels?: [...string]
		egress_policies?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies"]])

		// A list of GCP resources that are inside of the service
		// perimeter.
		// Currently only projects are allowed.
		// Format: projects/{project_number}
		resources?: [...string]

		// GCP services that are subject to the Service Perimeter
		// restrictions. Must contain a list of services. For example, if
		// 'storage.googleapis.com' is specified, access to the storage
		// buckets inside the perimeter must meet the perimeter's access
		// restrictions.
		restricted_services?: [...string]
		ingress_policies?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies"]])
		vpc_accessible_services?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/vpc_accessible_services", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/vpc_accessible_services"]])
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies": close({
		egress_from?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from"]])
		egress_to?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to"]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from": close({
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
		sources?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from/$defs/sources", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from/$defs/sources"]])

		// Specifies the type of identities that are allowed access to
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will
		// be allowed access. Possible values:
		// ["IDENTITY_TYPE_UNSPECIFIED", "ANY_IDENTITY",
		// "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string

		// Whether to enforce traffic restrictions based on 'sources'
		// field. If the 'sources' field is non-empty, then this field
		// must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values:
		// ["SOURCE_RESTRICTION_UNSPECIFIED",
		// "SOURCE_RESTRICTION_ENABLED", "SOURCE_RESTRICTION_DISABLED"]
		source_restriction?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_from/$defs/sources": close({
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

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to": close({
		// A list of external resources that are allowed to be accessed. A
		// request
		// matches if it contains an external resource in this list
		// (Example:
		// s3://bucket/path). Currently '*' is not allowed.
		external_resources?: [...string]
		operations?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations"]])

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

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// serviceName
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors": close({
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

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies": close({
		ingress_from?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from"]])
		ingress_to?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to"]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from": close({
		sources?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from/$defs/sources", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from/$defs/sources"]])

		// A list of identities that are allowed access through this
		// ingress policy.
		// Should be in the format of email address. The email address
		// should represent
		// individual user or service account only.
		identities?: [...string]

		// Specifies the type of identities that are allowed access from
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will be
		// allowed access. Possible values: ["IDENTITY_TYPE_UNSPECIFIED",
		// "ANY_IDENTITY", "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_from/$defs/sources": close({
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
		// Currently only projects are allowed. Format
		// 'projects/{project_number}'
		// The project may be in any Google Cloud organization, not just
		// the
		// organization that the perimeter is defined in. '*' is not
		// allowed, the case
		// of allowing all Google Cloud resources only is not supported.
		resource?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to": close({
		operations?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations"]])

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

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// 'serviceName'
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors": close({
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

	_#defs: "/$defs/service_perimeters/$defs/spec/$defs/vpc_accessible_services": close({
		// The list of APIs usable within the Service Perimeter.
		// Must be empty unless 'enableRestriction' is True.
		allowed_services?: [...string]

		// Whether to restrict API calls within the Service Perimeter to
		// the
		// list of APIs specified in 'allowedServices'.
		enable_restriction?: bool
	})

	_#defs: "/$defs/service_perimeters/$defs/status": close({
		// A list of AccessLevel resource names that allow resources
		// within
		// the ServicePerimeter to be accessed from the internet.
		// AccessLevels listed must be in the same policy as this
		// ServicePerimeter. Referencing a nonexistent AccessLevel is a
		// syntax error. If no AccessLevel names are listed, resources
		// within
		// the perimeter can only be accessed via GCP calls with request
		// origins within the perimeter. For Service Perimeter Bridge,
		// must
		// be empty.
		//
		// Format:
		// accessPolicies/{policy_id}/accessLevels/{access_level_name}
		access_levels?: [...string]
		egress_policies?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies"]])

		// A list of GCP resources that are inside of the service
		// perimeter.
		// Currently only projects are allowed.
		// Format: projects/{project_number}
		resources?: [...string]

		// GCP services that are subject to the Service Perimeter
		// restrictions. Must contain a list of services. For example, if
		// 'storage.googleapis.com' is specified, access to the storage
		// buckets inside the perimeter must meet the perimeter's access
		// restrictions.
		restricted_services?: [...string]
		ingress_policies?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies"]])
		vpc_accessible_services?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/vpc_accessible_services", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status/$defs/vpc_accessible_services"]])
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies": close({
		egress_from?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from"]])
		egress_to?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to"]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from": close({
		// A list of identities that are allowed access through this
		// 'EgressPolicy'.
		// Should be in the format of email address. The email address
		// should
		// represent individual user or service account only.
		identities?: [...string]
		sources?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from/$defs/sources", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from/$defs/sources"]])

		// Specifies the type of identities that are allowed access to
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will
		// be allowed access. Possible values:
		// ["IDENTITY_TYPE_UNSPECIFIED", "ANY_IDENTITY",
		// "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string

		// Whether to enforce traffic restrictions based on 'sources'
		// field. If the 'sources' field is non-empty, then this field
		// must be set to 'SOURCE_RESTRICTION_ENABLED'. Possible values:
		// ["SOURCE_RESTRICTION_UNSPECIFIED",
		// "SOURCE_RESTRICTION_ENABLED", "SOURCE_RESTRICTION_DISABLED"]
		source_restriction?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_from/$defs/sources": close({
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

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to": close({
		// A list of external resources that are allowed to be accessed. A
		// request
		// matches if it contains an external resource in this list
		// (Example:
		// s3://bucket/path). Currently '*' is not allowed.
		external_resources?: [...string]
		operations?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations"]])

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

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// serviceName
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/egress_policies/$defs/egress_to/$defs/operations/$defs/method_selectors": close({
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

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies": close({
		ingress_from?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from"]])
		ingress_to?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to", list.MaxItems(1) & [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to"]])

		// Human readable title. Must be unique within the perimeter. Does
		// not affect behavior.
		title?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from": close({
		sources?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from/$defs/sources", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from/$defs/sources"]])

		// A list of identities that are allowed access through this
		// ingress policy.
		// Should be in the format of email address. The email address
		// should represent
		// individual user or service account only.
		identities?: [...string]

		// Specifies the type of identities that are allowed access from
		// outside the
		// perimeter. If left unspecified, then members of 'identities'
		// field will be
		// allowed access. Possible values: ["IDENTITY_TYPE_UNSPECIFIED",
		// "ANY_IDENTITY", "ANY_USER_ACCOUNT", "ANY_SERVICE_ACCOUNT"]
		identity_type?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_from/$defs/sources": close({
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
		// Currently only projects are allowed. Format
		// 'projects/{project_number}'
		// The project may be in any Google Cloud organization, not just
		// the
		// organization that the perimeter is defined in. '*' is not
		// allowed, the case
		// of allowing all Google Cloud resources only is not supported.
		resource?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to": close({
		operations?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations"]])

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

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations": close({
		method_selectors?: matchN(1, [_#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors", [..._#defs."/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors"]])

		// The name of the API whose methods or permissions the
		// 'IngressPolicy' or
		// 'EgressPolicy' want to allow. A single 'ApiOperation' with
		// 'serviceName'
		// field set to '*' will allow all methods AND permissions for all
		// services.
		service_name?: string
	})

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/ingress_policies/$defs/ingress_to/$defs/operations/$defs/method_selectors": close({
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

	_#defs: "/$defs/service_perimeters/$defs/status/$defs/vpc_accessible_services": close({
		// The list of APIs usable within the Service Perimeter.
		// Must be empty unless 'enableRestriction' is True.
		allowed_services?: [...string]

		// Whether to restrict API calls within the Service Perimeter to
		// the
		// list of APIs specified in 'allowedServices'.
		enable_restriction?: bool
	})
}
