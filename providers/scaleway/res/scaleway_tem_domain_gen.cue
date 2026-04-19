package res

#scaleway_tem_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_tem_domain")
	close({
		timeouts?: #timeouts

		// Accept the Scaleway Terms of Service
		accept_tos!: bool

		// Enable automatic configuration options for the domain
		autoconfig?: bool

		// Date and time of domain's creation (RFC 3339 format)
		created_at?: string

		// DKIM public key, as should be recorded in the DNS zone
		dkim_config?: string

		// DKIM name for the domain, as should be recorded in the DNS zone
		dkim_name?: string

		// DMARC record for the domain, as should be recorded in the DNS
		// zone
		dmarc_config?: string

		// DMARC name for the domain, as should be recorded in the DNS
		// zone
		dmarc_name?: string
		id?:         string

		// Date and time the domain was last found to be valid (RFC 3339
		// format)
		last_valid_at?: string

		// The Scaleway's blackhole MX server to use
		mx_blackhole?: string

		// MX record configuration for the domain blackhole
		mx_config?: string

		// The domain name used when sending emails
		name!: string

		// Date and time of the next scheduled check (RFC 3339 format)
		next_check_at?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// The domain's reputation
		reputation?: [...close({
			previous_score?:     number
			previous_scored_at?: string
			score?:              number
			scored_at?:          string
			status?:             string
		})]

		// Date and time of the revocation of the domain (RFC 3339 format)
		revoked_at?: string

		// SMTP host to use to send emails
		smtp_host?: string

		// SMTP port to use to send emails over TLS. (Port 587)
		smtp_port?: number

		// SMTP port to use to send emails over TLS. (Port 2587)
		smtp_port_alternative?: number

		// SMTP port to use to send emails. (Port 25)
		smtp_port_unsecure?: number

		// SMTPS auth user refers to the identifier for a user authorized
		// to send emails via SMTPS, ensuring secure email transmission
		smtps_auth_user?: string

		// SMTPS port to use to send emails over TLS Wrapper. (Port 465)
		smtps_port?: number

		// SMTPS port to use to send emails over TLS Wrapper. (Port 2465)
		smtps_port_alternative?: number

		// Snippet of the SPF record that should be registered in the DNS
		// zone
		spf_config?: string

		// Complete SPF record value for the domain, as should be recorded
		// in the DNS zone
		spf_value?: string

		// Status of the domain
		status?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		update?:  string
	})
}
