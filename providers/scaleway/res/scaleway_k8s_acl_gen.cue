package res

#scaleway_k8s_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_k8s_acl")
	close({
		acl_rules?: matchN(1, [#acl_rules, [...#acl_rules]])
		timeouts?: #timeouts

		// Cluster on which the ACL should be applied
		cluster_id!: string
		id?:         string

		// If true, no IP will be allowed and the cluster will be fully
		// isolated
		no_ip_allowed?: bool

		// The region you want to attach the resource to
		region?: string
	})

	#acl_rules: close({
		// The description of the ACL rule
		description?: string

		// The ID of the ACL rule
		id?: string

		// The IP subnet to be allowed
		ip?: string

		// Allow access to cluster from all Scaleway ranges
		scaleway_ranges?: bool
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
