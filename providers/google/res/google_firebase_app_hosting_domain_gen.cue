package res

import "list"

google_firebase_app_hosting_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_app_hosting_domain")
	close({
		serve?: matchN(1, [#serve, list.MaxItems(1) & [...#serve]])
		timeouts?: #timeouts

		// The ID of the Backend that this Domain is associated with
		backend!: string

		// Time at which the domain was created.
		create_time?: string

		// The status of a custom domain's linkage to the Backend.
		custom_domain_status?: [...close({
			cert_state?: string
			host_state?: string
			issues?: [...close({
				code?:    number
				details?: string
				message?: string
			})]
			ownership_state?: string
			required_dns_updates?: [...close({
				check_time?: string
				desired?: [...close({
					check_error?: [...close({
						code?:    number
						details?: string
						message?: string
					})]
					domain_name?: string
					records?: [...close({
						domain_name?: string
						rdata?:       string
						relevant_state?: [...string]
						required_action?: string
						type?:            string
					})]
				})]
				discovered?: [...close({
					check_error?: [...close({
						code?:    number
						details?: string
						message?: string
					})]
					domain_name?: string
					records?: [...close({
						domain_name?: string
						rdata?:       string
						relevant_state?: [...string]
						required_action?: string
						type?:            string
					})]
				})]
				domain_name?: string
			})]
		})]

		// Time at which the domain was deleted.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Id of the domain to create.
		// Must be a valid domain name, such as "foo.com"
		domain_id!: string

		// Server-computed checksum based on other values; may be sent
		// on update or delete to ensure operation is done on expected resource.
		etag?: string
		id?:   string

		// The location of the Backend that this Domain is associated with
		location!: string

		// Identifier. The resource name of the domain, e.g.
		// 'projects/{project}/locations/{locationId}/backends/{backendId}/domains/{domainId}'
		name?: string

		// Time at which a soft-deleted domain will be purged, rendering in
		// permanently deleted.
		purge_time?: string
		project?:    string

		// System-assigned, unique identifier.
		uid?: string

		// Time at which the domain was last updated.
		update_time?: string
	})

	#serve: close({
		redirect?: matchN(1, [_#defs."/$defs/serve/$defs/redirect", list.MaxItems(1) & [..._#defs."/$defs/serve/$defs/redirect"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/serve/$defs/redirect": close({
		// The status code to use in a redirect response. Must be a valid HTTP 3XX
		// status code. Defaults to 302 if not present.
		status?: string

		// The URI of the redirect's intended destination. This URI will be
		// prepended to the original request path. URI without a scheme are
		// assumed to be HTTPS.
		uri!: string
	})
}
