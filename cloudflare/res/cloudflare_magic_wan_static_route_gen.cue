package res

#cloudflare_magic_wan_static_route: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_magic_wan_static_route")
	close({
		// Identifier
		account_id!: string

		// When the route was created.
		created_on?: string

		// An optional human provided description of the static route.
		description?: string

		// Identifier
		id?: string

		// Used only for ECMP routes.
		scope?: close({
			// List of colo names for the ECMP scope.
			colo_names?: [...string]

			// List of colo regions for the ECMP scope.
			colo_regions?: [...string]
		})

		// When the route was last modified.
		modified_on?: string

		// The next-hop IP Address for the static route.
		nexthop!: string

		// IP Prefix in Classless Inter-Domain Routing format.
		prefix!: string

		// Priority of the static route.
		priority!: number

		// Optional weight of the ECMP scope - if provided.
		weight?: number
	})
}
