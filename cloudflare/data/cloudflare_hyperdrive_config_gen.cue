package data

#cloudflare_hyperdrive_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_hyperdrive_config")
	close({
		caching?: close({
			// Set to true to disable caching of SQL responses. Default is
			// false.
			disabled?: bool

			// Specify the maximum duration items should persist in the cache.
			// Not returned if set to the default (60).
			max_age?: number

			// Specify the number of seconds the cache may serve a stale
			// response. Omitted if set to the default (15).
			stale_while_revalidate?: number
		})

		// Define configurations using a unique string identifier.
		account_id!: string

		// Defines the creation time of the Hyperdrive configuration.
		created_on?: string
		mtls?: close({
			// Define CA certificate ID obtained after uploading CA cert.
			ca_certificate_id?: string

			// Define mTLS certificate ID obtained after uploading client
			// cert.
			mtls_certificate_id?: string

			// Set SSL mode to 'require', 'verify-ca', or 'verify-full' to
			// verify the CA.
			sslmode?: string
		})

		// Define configurations using a unique string identifier.
		hyperdrive_id?: string

		// Define configurations using a unique string identifier.
		id?: string

		// Defines the last modified time of the Hyperdrive configuration.
		modified_on?: string
		name?:        string

		// The (soft) maximum number of connections the Hyperdrive is
		// allowed to make to the origin database.
		origin_connection_limit?: number
		origin?: close({
			// Defines the Client ID of the Access token to use when
			// connecting to the origin database.
			access_client_id?: string

			// Defines the Client Secret of the Access Token to use when
			// connecting to the origin database. The API never returns this
			// write-only value.
			access_client_secret?: string

			// Set the name of your origin database.
			database?: string

			// Defines the host (hostname or IP) of your origin database.
			host?: string

			// Set the password needed to access your origin database. The API
			// never returns this write-only value.
			password?: string

			// Defines the port (default: 5432 for Postgres) of your origin
			// database.
			port?: number

			// Specifies the URL scheme used to connect to your origin
			// database.
			// Available values: "postgres", "postgresql", "mysql".
			scheme?: string

			// Set the user of your origin database.
			user?: string
		})
	})
}
