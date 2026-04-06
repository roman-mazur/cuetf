package res

import "list"

#scaleway_lb_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_lb_certificate")
	close({
		custom_certificate?: matchN(1, [#custom_certificate, list.MaxItems(1) & [...#custom_certificate]])
		letsencrypt?: matchN(1, [#letsencrypt, list.MaxItems(1) & [...#letsencrypt]])
		timeouts?: #timeouts

		// The main domain name of the certificate
		common_name?: string

		// The identifier (SHA-1) of the certificate
		fingerprint?: string
		id?:          string

		// The load-balancer ID
		lb_id!: string

		// The name of the load-balancer certificate
		name?: string

		// The not valid after validity bound timestamp
		not_valid_after?: string

		// The not valid before validity bound timestamp
		not_valid_before?: string

		// The status of certificate
		status?: string

		// The alternative domain names of the certificate
		subject_alternative_name?: [...string]
	})

	#custom_certificate: close({
		// The full PEM-formatted certificate chain
		certificate_chain!: string
	})

	#letsencrypt: close({
		// The main domain name of the certificate
		common_name!: string

		// The alternative domain names of the certificate
		subject_alternative_name?: [...string]
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
