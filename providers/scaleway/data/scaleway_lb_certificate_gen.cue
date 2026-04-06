package data

#scaleway_lb_certificate: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_lb_certificate")
	close({
		// The ID of the certificate
		certificate_id?: string

		// The main domain name of the certificate
		common_name?: string

		// The custom type certificate type configuration
		custom_certificate?: [...close({
			certificate_chain?: string
		})]

		// The identifier (SHA-1) of the certificate
		fingerprint?: string
		id?:          string

		// The load-balancer ID
		lb_id?: string

		// The Let's Encrypt type certificate configuration
		letsencrypt?: [...close({
			common_name?: string
			subject_alternative_name?: [...string]
		})]

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
}
