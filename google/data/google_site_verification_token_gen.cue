package data

#google_site_verification_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_site_verification_token")
	close({
		id?: string

		// The site identifier. If the type is set to SITE, the identifier
		// is a URL. If the type is
		// set to INET_DOMAIN, the identifier is a domain name.
		identifier!: string

		// The returned token for use in subsequent verification steps.
		token?: string

		// The type of resource to be verified, either a domain or a web
		// site. Possible values: ["INET_DOMAIN", "SITE"]
		type!:     string
		timeouts?: #timeouts

		// The verification method for the Site Verification system to use
		// to verify
		// this site or domain. Possible values: ["ANALYTICS",
		// "DNS_CNAME", "DNS_TXT", "FILE", "META", "TAG_MANAGER"]
		verification_method!: string
	})

	#timeouts: close({
		read?: string
	})
}
