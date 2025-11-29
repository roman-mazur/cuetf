package res

import "list"

#google_site_verification_web_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_site_verification_web_resource")
	close({
		id?: string

		// The email addresses of all direct, verified owners of this
		// exact property. Indirect owners —
		// for example verified owners of the containing domain—are not
		// included in this list.
		owners?: [...string]

		// The verification method for the Site Verification system to use
		// to verify
		// this site or domain. Possible values: ["ANALYTICS",
		// "DNS_CNAME", "DNS_TXT", "FILE", "META", "TAG_MANAGER"]
		verification_method!: string

		// The string used to identify this web resource.
		web_resource_id?: string
		site!: matchN(1, [#site, list.MaxItems(1) & [_, ...] & [...#site]])
		timeouts?: #timeouts
	})

	#site: close({
		// The site identifier. If the type is set to SITE, the identifier
		// is a URL. If the type is
		// set to INET_DOMAIN, the identifier is a domain name.
		identifier!: string

		// The type of resource to be verified. Possible values:
		// ["INET_DOMAIN", "SITE"]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
