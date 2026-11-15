package data

cloudflare_zero_trust_cws_tenant_structure_nodes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_cws_tenant_structure_nodes")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string

		// Sort direction (default: asc)
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Filter by node name (case-insensitive substring match)
		name?: string

		// Filter by exact cloud-native identifier
		native_id?: string

		// Filter by exact node kind
		node_kind?: string

		// Field to order results by (default: created_at)
		// Available values: "name", "created_at", "updated_at".
		order?: string

		// Filter by exact parent native ID
		parent?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
			name?: string

			// Cloud-native identifier of this node, unique within the structure; the
			// parent-reference target. Shape depends on the structure's application.
			// Immutable after create.
			native_id?: string

			// Position in the tree. Legal values depend on the structure's application
			// (aws: root/ou/account; cloudflare: org/account/zone). At most one root per
			// structure. Immutable after create.
			node_kind?: string

			// Native ID of this node's parent. Required for non-root nodes and omitted for
			// the root. The parent must be in the same structure and able to contain this
			// node kind.
			parent?:     string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Server-assigned UUID
			id?: string

			// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
			name?: string

			// Cloud-native identifier of this node, unique within the structure; the
			// parent-reference target. Shape depends on the structure's application.
			// Immutable after create.
			native_id?: string

			// Position in the tree. Legal values depend on the structure's application
			// (aws: root/ou/account; cloudflare: org/account/zone). At most one root per
			// structure. Immutable after create.
			node_kind?: string

			// Native ID of this node's parent. Required for non-root nodes and omitted for
			// the root. The parent must be in the same structure and able to contain this
			// node kind.
			parent?:     string
			updated_at?: string
		})]])

		// ID of the parent tenant structure
		structure_id!: string
	})
}
