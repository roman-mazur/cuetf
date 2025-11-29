package res

import "list"

#google_apigee_api_product: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_api_product")
	close({
		// Comma-separated list of API resources to be bundled in the API
		// product. By default, the resource paths are mapped from the
		// proxy.pathsuffix variable.
		// The proxy path suffix is defined as the URI fragment following
		// the ProxyEndpoint base path. For example, if the apiResources
		// element is defined to be /forecastrss and the base path
		// defined for the API proxy is /weather, then only requests to
		// /weather/forecastrss are permitted by the API product.
		api_resources?: [...string]

		// Flag that specifies how API keys are approved to access the
		// APIs defined by the API product.
		// Valid values are 'auto' or 'manual'. Possible values: ["auto",
		// "manual"]
		approval_type?: string

		// Response only. Creation time of this environment as
		// milliseconds since epoch.
		created_at?: string

		// Description of the API product. Include key information about
		// the API product that is not captured by other fields.
		description?: string

		// Name displayed in the UI or developer portal to developers
		// registering for API access.
		display_name!: string

		// Comma-separated list of environment names to which the API
		// product is bound. Requests to environments that are not listed
		// are rejected.
		// By specifying one or more environments, you can bind the
		// resources listed in the API product to a specific environment,
		// preventing developers from accessing those resources through
		// API proxies deployed in another environment.
		environments?: [...string]

		// Response only. Modified time of this environment as
		// milliseconds since epoch.
		last_modified_at?: string
		id?:               string

		// Internal name of the API product.
		name!: string

		// The Apigee Organization associated with the Apigee API product,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// Comma-separated list of API proxy names to which this API
		// product is bound. By specifying API proxies, you can associate
		// resources in the API product with specific API proxies,
		// preventing developers from accessing those resources through
		// other API proxies.
		// Apigee rejects requests to API proxies that are not listed.
		proxies?: [...string]

		// Number of request messages permitted per app by this API
		// product for the specified quotaInterval and quotaTimeUnit.
		// For example, a quota of 50, for a quotaInterval of 12 and a
		// quotaTimeUnit of hours means 50 requests are allowed every 12
		// hours.
		quota?: string
		attributes?: matchN(1, [#attributes, [...#attributes]])
		graphql_operation_group?: matchN(1, [#graphql_operation_group, list.MaxItems(1) & [...#graphql_operation_group]])
		grpc_operation_group?: matchN(1, [#grpc_operation_group, list.MaxItems(1) & [...#grpc_operation_group]])
		operation_group?: matchN(1, [#operation_group, list.MaxItems(1) & [...#operation_group]])
		timeouts?: #timeouts

		// Scope of the quota decides how the quota counter gets applied
		// and evaluate for quota violation. If the Scope is set as
		// PROXY, then all the operations defined for the APIproduct that
		// are associated with the same proxy will share the same quota
		// counter set at the APIproduct level, making it a global
		// counter at a proxy level. If the Scope is set as OPERATION,
		// then each operations get the counter set at the API product
		// dedicated, making it a local counter. Note that, the
		// QuotaCounterScope applies only when an operation does not have
		// dedicated quota set for itself. Possible values:
		// ["QUOTA_COUNTER_SCOPE_UNSPECIFIED", "PROXY", "OPERATION"]
		quota_counter_scope?: string

		// Time interval over which the number of request messages is
		// calculated.
		quota_interval?: string

		// Time unit defined for the quotaInterval. Valid values include
		// second, minute, hour, day, month or year.
		quota_time_unit?: string

		// Comma-separated list of OAuth scopes that are validated at
		// runtime. Apigee validates that the scopes in any access token
		// presented match the scopes defined in the OAuth policy
		// associated with the API product.
		scopes?: [...string]

		// Optional. The resource ID of the parent Space. If not set, the
		// parent resource will be the Organization.
		space?: string
	})

	#attributes: close({
		// Key of the attribute.
		name?: string

		// Value of the attribute.
		value?: string
	})

	#graphql_operation_group: close({
		operation_configs?: matchN(1, [_#defs."/$defs/graphql_operation_group/$defs/operation_configs", [..._#defs."/$defs/graphql_operation_group/$defs/operation_configs"]])

		// Flag that specifes whether the configuration is for Apigee API
		// proxy or a remote service. Valid values include proxy or
		// remoteservice. Defaults to proxy. Set to proxy when Apigee API
		// proxies are associated with the API product. Set to
		// remoteservice when non-Apigee proxies like Istio-Envoy are
		// associated with the API product. Possible values: ["proxy",
		// "remoteservice"]
		operation_config_type?: string
	})

	#grpc_operation_group: close({
		operation_configs?: matchN(1, [_#defs."/$defs/grpc_operation_group/$defs/operation_configs", [..._#defs."/$defs/grpc_operation_group/$defs/operation_configs"]])
	})

	#operation_group: close({
		operation_configs?: matchN(1, [_#defs."/$defs/operation_group/$defs/operation_configs", [..._#defs."/$defs/operation_group/$defs/operation_configs"]])

		// Flag that specifes whether the configuration is for Apigee API
		// proxy or a remote service. Valid values include proxy or
		// remoteservice. Defaults to proxy. Set to proxy when Apigee API
		// proxies are associated with the API product. Set to
		// remoteservice when non-Apigee proxies like Istio-Envoy are
		// associated with the API product. Possible values: ["proxy",
		// "remoteservice"]
		operation_config_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/graphql_operation_group/$defs/operation_configs": close({
		attributes?: matchN(1, [_#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/attributes", [..._#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/attributes"]])
		operations?: matchN(1, [_#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/operations", [..._#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/operations"]])
		quota?: matchN(1, [_#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/quota", list.MaxItems(1) & [..._#defs."/$defs/graphql_operation_group/$defs/operation_configs/$defs/quota"]])

		// Required. Name of the API proxy endpoint or remote service with
		// which the GraphQL operation and quota are associated.
		api_source?: string
	})

	_#defs: "/$defs/graphql_operation_group/$defs/operation_configs/$defs/attributes": close({
		// Key of the attribute.
		name?: string

		// Value of the attribute.
		value?: string
	})

	_#defs: "/$defs/graphql_operation_group/$defs/operation_configs/$defs/operations": close({
		// GraphQL operation name. The name and operation type will be
		// used to apply quotas. If no name is specified, the quota will
		// be applied to all GraphQL operations irrespective of their
		// operation names in the payload.
		operation?: string

		// Required. GraphQL operation types. Valid values include query
		// or mutation.
		// Note: Apigee does not currently support subscription types.
		operation_types?: [...string]
	})

	_#defs: "/$defs/graphql_operation_group/$defs/operation_configs/$defs/quota": close({
		// Required. Time interval over which the number of request
		// messages is calculated.
		interval?: string

		// Required. Upper limit allowed for the time interval and time
		// unit specified. Requests exceeding this limit will be
		// rejected.
		limit?: string

		// Time unit defined for the interval. Valid values include
		// second, minute, hour, day, month or year. If limit and
		// interval are valid, the default value is hour; otherwise, the
		// default is null.
		time_unit?: string
	})

	_#defs: "/$defs/grpc_operation_group/$defs/operation_configs": close({
		// Required. Name of the API proxy with which the gRPC operation
		// and quota are associated.
		api_source?: string

		// List of unqualified gRPC method names for the proxy to which
		// quota will be applied. If this field is empty, the Quota will
		// apply to all operations on the gRPC service defined on the
		// proxy.
		//
		// Example: Given a proxy that is configured to serve
		// com.petstore.PetService, the methods
		// com.petstore.PetService.ListPets and
		// com.petstore.PetService.GetPet would be specified here as
		// simply ["ListPets", "GetPet"].
		//
		// Note: Currently, you can specify only a single
		// GraphQLOperation. Specifying more than one will cause the
		// operation to fail.
		methods?: [...string]
		attributes?: matchN(1, [_#defs."/$defs/grpc_operation_group/$defs/operation_configs/$defs/attributes", [..._#defs."/$defs/grpc_operation_group/$defs/operation_configs/$defs/attributes"]])

		// Required. gRPC Service name associated to be associated with
		// the API proxy, on which quota rules can be applied upon.
		service?: string
		quota?: matchN(1, [_#defs."/$defs/grpc_operation_group/$defs/operation_configs/$defs/quota", list.MaxItems(1) & [..._#defs."/$defs/grpc_operation_group/$defs/operation_configs/$defs/quota"]])
	})

	_#defs: "/$defs/grpc_operation_group/$defs/operation_configs/$defs/attributes": close({
		// Key of the attribute.
		name?: string

		// Value of the attribute.
		value?: string
	})

	_#defs: "/$defs/grpc_operation_group/$defs/operation_configs/$defs/quota": close({
		// Required. Time interval over which the number of request
		// messages is calculated.
		interval?: string

		// Required. Upper limit allowed for the time interval and time
		// unit specified. Requests exceeding this limit will be
		// rejected.
		limit?: string

		// Time unit defined for the interval. Valid values include
		// second, minute, hour, day, month or year. If limit and
		// interval are valid, the default value is hour; otherwise, the
		// default is null.
		time_unit?: string
	})

	_#defs: "/$defs/operation_group/$defs/operation_configs": close({
		attributes?: matchN(1, [_#defs."/$defs/operation_group/$defs/operation_configs/$defs/attributes", [..._#defs."/$defs/operation_group/$defs/operation_configs/$defs/attributes"]])
		operations?: matchN(1, [_#defs."/$defs/operation_group/$defs/operation_configs/$defs/operations", [..._#defs."/$defs/operation_group/$defs/operation_configs/$defs/operations"]])
		quota?: matchN(1, [_#defs."/$defs/operation_group/$defs/operation_configs/$defs/quota", list.MaxItems(1) & [..._#defs."/$defs/operation_group/$defs/operation_configs/$defs/quota"]])

		// Required. Name of the API proxy or remote service with which
		// the resources, methods, and quota are associated.
		api_source?: string
	})

	_#defs: "/$defs/operation_group/$defs/operation_configs/$defs/attributes": close({
		// Key of the attribute.
		name?: string

		// Value of the attribute.
		value?: string
	})

	_#defs: "/$defs/operation_group/$defs/operation_configs/$defs/operations": close({
		// Methods refers to the REST verbs, when none specified, all verb
		// types are allowed.
		methods?: [...string]

		// Required. REST resource path associated with the API proxy or
		// remote service.
		resource?: string
	})

	_#defs: "/$defs/operation_group/$defs/operation_configs/$defs/quota": close({
		// Required. Time interval over which the number of request
		// messages is calculated.
		interval?: string

		// Required. Upper limit allowed for the time interval and time
		// unit specified. Requests exceeding this limit will be
		// rejected.
		limit?: string

		// Time unit defined for the interval. Valid values include
		// second, minute, hour, day, month or year. If limit and
		// interval are valid, the default value is hour; otherwise, the
		// default is null.
		time_unit?: string
	})
}
