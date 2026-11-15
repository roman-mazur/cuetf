package res

cloudflare_zero_trust_cws_tenant_structure_node: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_cws_tenant_structure_node")
	close({
		// Cloudflare account ID (32-character hexadecimal string)
		account_id!: string
		created_at?: string

		// Server-assigned UUID
		id?: string

		// Display name (e.g. an OU or account name), mutable. Optional; empty by default.
		name?: string

		// Cloud-native identifier of this node, unique within the structure; the
		// parent-reference target. Shape depends on the structure's application.
		// Immutable after create.
		native_id!: string

		// Position in the tree. Legal values depend on the structure's application
		// (aws: root/ou/account; cloudflare: org/account/zone). At most one root per
		// structure. Immutable after create.
		node_kind!: string

		// Native ID of this node's parent. Required for non-root nodes and omitted for
		// the root. The parent must be in the same structure and able to contain this
		// node kind.
		parent?: string

		// ID of the parent tenant structure
		structure_id!: string
		updated_at?:   string
	})
}
