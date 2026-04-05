package res

#google_compute_region_health_aggregation_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_health_aggregation_policy")
	close({
		timeouts?: #timeouts

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when you
		// create the resource.
		description?: string

		// Fingerprint of this resource. A hash of the contents stored in
		// this object.
		// This field is used in optimistic locking. This field will be
		// ignored when
		// inserting a 'HealthAggregationPolicy'. An up-to-date
		// fingerprint
		// must be provided in order to patch the
		// RegionHealthAggregationPolicy; Otherwise,
		// the request will fail with error '412 conditionNotMet'. To see
		// the latest fingerprint, make a 'get()' request to retrieve the
		// RegionHealthAggregationPolicy.
		fingerprint?: string

		// Can only be set if the 'policyType' field is
		// 'BACKEND_SERVICE_POLICY'. Specifies the threshold (as a
		// percentage) of healthy endpoints required in order to consider
		// the
		// aggregated health result HEALTHY. Defaults to '60'. Must be in
		// range [0, 100]. Not applicable if the 'policyType' field is
		// 'DNB_PUBLIC_IP_POLICY'. Can be mutated. This field is optional,
		// and will be set to the default if unspecified. Note that both
		// this
		// threshold and 'minHealthyThreshold' must be satisfied in order
		// for HEALTHY to be the aggregated result. "Endpoints" refers to
		// network
		// endpoints within a Network Endpoint Group or instances within
		// an Instance
		// Group.
		healthy_percent_threshold?: number

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		id?: string

		// Can only be set if the 'policyType' field is
		// 'BACKEND_SERVICE_POLICY'. Specifies the minimum number of
		// healthy endpoints required in order to consider the aggregated
		// health
		// result HEALTHY. Defaults to '1'. Must be positive. Not
		// applicable if the 'policyType' field is
		// 'DNB_PUBLIC_IP_POLICY'. Can be mutated. This field is optional,
		// and will be set to the default if unspecified. Note that both
		// this
		// threshold and 'healthyPercentThreshold' must be satisfied in
		// order for HEALTHY to be the aggregated result. "Endpoints"
		// refers to
		// network endpoints within a Network Endpoint Group or instances
		// within an
		// Instance Group.
		min_healthy_threshold?: number

		// Name of the resource. Provided by the client when the resource
		// is created.
		// The name must be 1-63 characters long, and comply with RFC1035.
		// Specifically, the name must be 1-63 characters long and match
		// the regular
		// expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the first
		// character must be a lowercase letter, and all following
		// characters must
		// be a dash, lowercase letter, or digit, except the last
		// character, which
		// cannot be a dash.
		name!: string

		// Specifies the type of the healthAggregationPolicy. The only
		// allowed value
		// for global resources is 'DNS_PUBLIC_IP_POLICY'. The only
		// allowed
		// value for regional resources is 'BACKEND_SERVICE_POLICY'. Must
		// be specified when the healthAggregationPolicy is created, and
		// cannot be
		// mutated. Default value: "BACKEND_SERVICE_POLICY" Possible
		// values: ["DNS_PUBLIC_IP_POLICY", "BACKEND_SERVICE_POLICY"]
		policy_type?: string
		project?:     string

		// URL of the region where the health aggregation policy resides.
		region!: string

		// Server-defined URL with id for the resource.
		self_link_with_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
