package res

#google_compute_target_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_target_pool")
	close({
		// URL to the backup target pool. Must also set failover_ratio.
		backup_pool?: string

		// Textual description field.
		description?: string

		// Ratio (0 to 1) of failed nodes before using the backup pool
		// (which must also be set).
		failover_ratio?: number

		// List of zero or one health check name or self_link. Only legacy
		// google_compute_http_health_check is supported.
		health_checks?: [...string]

		// List of instances in the pool. They can be given as URLs, or in
		// the form of "zone/name". Note that the instances need not
		// exist at the time of target pool creation, so there is no need
		// to use the Terraform interpolators to create a dependency on
		// the instances from the target pool.
		instances?: [...string]

		// A unique name for the resource, required by GCE. Changing this
		// forces a new resource to be created.
		name!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string
		id?:      string

		// Where the target pool resides. Defaults to project region.
		region?:   string
		timeouts?: #timeouts

		// The URI of the created resource.
		self_link?: string

		// How to distribute load. Options are "NONE" (no affinity).
		// "CLIENT_IP" (hash of the source/dest addresses / ports), and
		// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
		session_affinity?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
