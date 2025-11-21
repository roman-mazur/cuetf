package data

#cloudflare_web3_hostname: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_web3_hostname")
	close({
		created_on?: string

		// Specify an optional description of the hostname.
		description?: string

		// Specify the DNSLink value used if the target is ipfs.
		dnslink?: string

		// Specify the identifier of the hostname.
		id?: string

		// Specify the identifier of the hostname.
		identifier!: string

		// Specify the hostname that points to the target gateway via
		// CNAME.
		name?: string

		// Specifies the status of the hostname's activation.
		// Available values: "active", "pending", "deleting", "error".
		status?:      string
		modified_on?: string

		// Specify the target gateway of the hostname.
		// Available values: "ethereum", "ipfs", "ipfs_universal_path".
		target?: string

		// Specify the identifier of the hostname.
		zone_id!: string
	})
}
