package res

#scaleway_container_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container_token")
	close({
		// Container ID
		container_id?: string

		// Description of the token.
		description?: string

		// Expiration date of the token (TimeRFC3339)
		expires_at?: string
		id?:         string

		// Namespace ID
		namespace_id?: string

		// The region you want to attach the resource to
		region?: string

		// Token
		token?: string
	})
}
