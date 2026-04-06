package res

#scaleway_webhosting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_webhosting")
	close({
		timeouts?: #timeouts

		// URL to connect to cPanel Dashboard and to Webmail interface
		cpanel_urls?: [...close({
			dashboard?: string
			webmail?:   string
		})]

		// Date and time of hosting's creation (RFC 3339 format)
		created_at?: string

		// DNS status of the hosting
		dns_status?: string

		// The domain name of the hosting
		domain!: string

		// Contact email of the client for the hosting
		email!: string
		id?:    string

		// List of nameservers associated with the webhosting.
		name_servers?: [...close({
			hostname?:   string
			is_default?: bool
			status?:     string
		})]

		// The ID of the selected offer for the hosting
		offer_id!: string

		// Name of the active offer
		offer_name?: string

		// IDs of the selected options for the hosting
		option_ids?: [...string]

		// Active options of the hosting
		options?: [...close({
			id?:   string
			name?: string
		})]

		// Hostname of the host platform
		platform_hostname?: string

		// Number of the host platform
		platform_number?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// List of DNS records associated with the webhosting.
		records?: [...close({
			name?:     string
			priority?: number
			status?:   string
			ttl?:      number
			type?:     string
			value?:    string
		})]

		// The region you want to attach the resource to
		region?: string

		// The hosting status
		status?: string

		// The tags of the hosting
		tags?: [...string]

		// Date and time of hosting's last update (RFC 3339 format)
		updated_at?: string

		// Main hosting cPanel username
		username?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
	})
}
