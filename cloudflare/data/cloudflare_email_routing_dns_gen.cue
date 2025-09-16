package data

#cloudflare_email_routing_dns: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_dns")
	close({
		errors?: matchN(1, [close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		}), [...close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		})]])

		// Domain of your zone.
		subdomain?: string

		// Whether the API call was successful.
		success?: bool

		// Identifier.
		zone_id!: string
		messages?: matchN(1, [close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		}), [...close({
			code?:              number
			documentation_url?: string
			message?:           string
			source?: close({
				pointer?: string
			})
		})]])
		result?: close({
			// DNS record content.
			content?: string

			// DNS record name (or @ for the zone apex).
			name?: string

			// Required for MX, SRV and URI records. Unused by other record
			// types. Records with lower priorities are preferred.
			priority?: number
			errors?: matchN(1, [close({
				code?: string

				// List of records needed to enable an Email Routing zone.
				missing?: close({
					// DNS record content.
					content?: string

					// DNS record name (or @ for the zone apex).
					name?: string

					// Required for MX, SRV and URI records. Unused by other record
					// types. Records with lower priorities are preferred.
					priority?: number

					// Time to live, in seconds, of the DNS record. Must be between 60
					// and 86400, or 1 for 'automatic'.
					ttl?: number

					// DNS record type.
					// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV",
					// "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA",
					// "SSHFP", "SVCB", "TLSA", "URI".
					type?: string
				})
			}), [...close({
				code?: string

				// List of records needed to enable an Email Routing zone.
				missing?: close({
					// DNS record content.
					content?: string

					// DNS record name (or @ for the zone apex).
					name?: string

					// Required for MX, SRV and URI records. Unused by other record
					// types. Records with lower priorities are preferred.
					priority?: number

					// Time to live, in seconds, of the DNS record. Must be between 60
					// and 86400, or 1 for 'automatic'.
					ttl?: number

					// DNS record type.
					// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV",
					// "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA",
					// "SSHFP", "SVCB", "TLSA", "URI".
					type?: string
				})
			})]])

			// Time to live, in seconds, of the DNS record. Must be between 60
			// and 86400, or 1 for 'automatic'.
			ttl?: number

			// DNS record type.
			// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV",
			// "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA",
			// "SSHFP", "SVCB", "TLSA", "URI".
			type?: string
			record?: matchN(1, [close({
				// DNS record content.
				content?: string

				// DNS record name (or @ for the zone apex).
				name?: string

				// Required for MX, SRV and URI records. Unused by other record
				// types. Records with lower priorities are preferred.
				priority?: number

				// Time to live, in seconds, of the DNS record. Must be between 60
				// and 86400, or 1 for 'automatic'.
				ttl?: number

				// DNS record type.
				// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV",
				// "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA",
				// "SSHFP", "SVCB", "TLSA", "URI".
				type?: string
			}), [...close({
				// DNS record content.
				content?: string

				// DNS record name (or @ for the zone apex).
				name?: string

				// Required for MX, SRV and URI records. Unused by other record
				// types. Records with lower priorities are preferred.
				priority?: number

				// Time to live, in seconds, of the DNS record. Must be between 60
				// and 86400, or 1 for 'automatic'.
				ttl?: number

				// DNS record type.
				// Available values: "A", "AAAA", "CNAME", "HTTPS", "TXT", "SRV",
				// "LOC", "MX", "NS", "CERT", "DNSKEY", "DS", "NAPTR", "SMIMEA",
				// "SSHFP", "SVCB", "TLSA", "URI".
				type?: string
			})]])
		})
		result_info?: close({
			// Total number of results for the requested service.
			count?: number

			// Current page within paginated list of results.
			page?: number

			// Number of results per page of results.
			per_page?: number

			// Total results available without any search parameters.
			total_count?: number
		})
	})
}
