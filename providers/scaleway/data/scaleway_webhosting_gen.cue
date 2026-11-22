package data

scaleway_webhosting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_webhosting")
	close({
		// URL to connect to cPanel Dashboard and to Webmail interface
		cpanel_urls?: matchN(1, [close({
			// URL to connect to dashboard interface
			dashboard?: string

			// URL to connect to Webmail interface
			webmail?: string
		}), [...close({
			// URL to connect to dashboard interface
			dashboard?: string

			// URL to connect to Webmail interface
			webmail?: string
		})]])

		// Date and time of hosting's creation (RFC 3339 format)
		created_at?: string

		// The ID of the webhosting
		id?: string

		// List of nameservers associated with the webhosting.
		name_servers?: matchN(1, [close({
			// Hostname of the server
			hostname?: string

			// Whether or not the webhosting is the default one
			is_default?: bool

			// Status of the nameserver
			status?: string
		}), [...close({
			// Hostname of the server
			hostname?: string

			// Whether or not the webhosting is the default one
			is_default?: bool

			// Status of the nameserver
			status?: string
		})]])

		// DNS status of the hosting
		dns_status?: string

		// The ID of the selected offer for the hosting
		offer_id?: string

		// Name of the active offer
		offer_name?: string

		// IDs of the selected options for the hosting
		option_ids?: [...string]

		// Active options of the hosting
		options?: matchN(1, [close({
			// ID of the active option
			id?: string

			// Name of the option
			name?: string
		}), [...close({
			// ID of the active option
			id?: string

			// Name of the option
			name?: string
		})]])

		// The domain name of the hosting
		domain?: string

		// The organization ID the resource is associated to
		organization_id?: string

		// Hostname of the host platform
		platform_hostname?: string

		// Number of the host platform
		platform_number?: number

		// The project ID the resource is associated to
		project_id?: string

		// List of DNS records associated with the webhosting.
		records?: matchN(1, [close({
			// Name of the DNS record
			name?: string

			// Priority of DNS records associated with the webhosting.
			priority?: number

			// Status of the hosting record
			status?: string

			// Time to live in seconds of the record
			ttl?: number

			// Type of the DNS record
			type?: string

			// Value of the DNS record
			value?: string
		}), [...close({
			// Name of the DNS record
			name?: string

			// Priority of DNS records associated with the webhosting.
			priority?: number

			// Status of the hosting record
			status?: string

			// Time to live in seconds of the record
			ttl?: number

			// Type of the DNS record
			type?: string

			// Value of the DNS record
			value?: string
		})]])

		// Contact email of the client for the hosting
		email?: string

		// The region of the hosting
		region?: string

		// The hosting status
		status?: string

		// The tags of the hosting
		tags?: [...string]

		// Date and time of hosting's last update (RFC 3339 format)
		updated_at?: string

		// Main hosting cPanel username
		username?: string

		// The ID of the webhosting
		webhosting_id?: string
	})
}
