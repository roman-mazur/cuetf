package data

cloudflare_registrar_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_registrar_domains")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Shows if a domain is available for transferring into Cloudflare Registrar.
			available?: bool

			// Shows contact information for domain registrant.
			registrant_contact?: close({
				// Address.
				address?: string

				// Optional address line for unit, floor, suite, etc.
				address2?: string

				// City.
				city?: string

				// The country in which the user lives.
				country?: string

				// The contact email address of the user.
				email?: string

				// Contact fax number.
				fax?: string

				// User's first name.
				first_name?: string

				// Contact Identifier.
				id?: string

				// User's last name.
				last_name?: string

				// Name of organization.
				organization?: string

				// User's telephone number.
				phone?: string

				// State.
				state?: string

				// The zipcode or postal code where the user lives.
				zip?: string
			})

			// Indicates eligibility to register the domain as a new domain.
			can_register?: bool

			// Statuses for domain transfers into Cloudflare Registrar.
			transfer_in?: close({
				// Status of the registrant authorization step.
				// Available values: "needed", "ok".
				accept_foa?: string

				// Status of the registry transfer-approval step.
				// Available values: "needed", "ok", "pending", "trying", "rejected", "unknown".
				approve_transfer?: string

				// Indicates if cancellation is still possible.
				can_cancel_transfer?: bool

				// Status of the privacy-guard disabling step at the foreign registrar.
				// Available values: "needed", "ok", "unknown".
				disable_privacy?: string

				// Status of the auth-code entry and verification step.
				// Available values: "needed", "ok", "pending", "trying", "rejected".
				enter_auth_code?: string

				// Status of the domain-unlock step at the foreign registrar.
				// Available values: "needed", "ok", "pending", "trying", "unknown".
				unlock_domain?: string
			})

			// Shows time of creation.
			created_at?: string

			// Shows name of current registrar.
			current_registrar?: string

			// Shows when domain name registration expires.
			expires_at?: string

			// Domain identifier.
			id?: string

			// Shows whether a registrar lock is in place for a domain.
			locked?: bool

			// A comma-separated list of registry status codes. Refer to [EPP Status
			// Codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en)
			// for the full list.
			registry_statuses?: string

			// Indicates whether Cloudflare Registrar currently supports a particular TLD.
			// Refer to [TLD Policies](https://www.cloudflare.com/tld-policies/) for a list
			// of supported TLDs.
			supported_tld?: bool

			// Last updated.
			updated_at?: string
		}), [...close({
			// Shows if a domain is available for transferring into Cloudflare Registrar.
			available?: bool

			// Shows contact information for domain registrant.
			registrant_contact?: close({
				// Address.
				address?: string

				// Optional address line for unit, floor, suite, etc.
				address2?: string

				// City.
				city?: string

				// The country in which the user lives.
				country?: string

				// The contact email address of the user.
				email?: string

				// Contact fax number.
				fax?: string

				// User's first name.
				first_name?: string

				// Contact Identifier.
				id?: string

				// User's last name.
				last_name?: string

				// Name of organization.
				organization?: string

				// User's telephone number.
				phone?: string

				// State.
				state?: string

				// The zipcode or postal code where the user lives.
				zip?: string
			})

			// Indicates eligibility to register the domain as a new domain.
			can_register?: bool

			// Statuses for domain transfers into Cloudflare Registrar.
			transfer_in?: close({
				// Status of the registrant authorization step.
				// Available values: "needed", "ok".
				accept_foa?: string

				// Status of the registry transfer-approval step.
				// Available values: "needed", "ok", "pending", "trying", "rejected", "unknown".
				approve_transfer?: string

				// Indicates if cancellation is still possible.
				can_cancel_transfer?: bool

				// Status of the privacy-guard disabling step at the foreign registrar.
				// Available values: "needed", "ok", "unknown".
				disable_privacy?: string

				// Status of the auth-code entry and verification step.
				// Available values: "needed", "ok", "pending", "trying", "rejected".
				enter_auth_code?: string

				// Status of the domain-unlock step at the foreign registrar.
				// Available values: "needed", "ok", "pending", "trying", "unknown".
				unlock_domain?: string
			})

			// Shows time of creation.
			created_at?: string

			// Shows name of current registrar.
			current_registrar?: string

			// Shows when domain name registration expires.
			expires_at?: string

			// Domain identifier.
			id?: string

			// Shows whether a registrar lock is in place for a domain.
			locked?: bool

			// A comma-separated list of registry status codes. Refer to [EPP Status
			// Codes](https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en)
			// for the full list.
			registry_statuses?: string

			// Indicates whether Cloudflare Registrar currently supports a particular TLD.
			// Refer to [TLD Policies](https://www.cloudflare.com/tld-policies/) for a list
			// of supported TLDs.
			supported_tld?: bool

			// Last updated.
			updated_at?: string
		})]])
	})
}
