package data

#cloudflare_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_ip_ranges")
	close({
		etag?: string
		ipv4_cidrs?: [...string]
		ipv6_cidrs?: [...string]
		jdcloud_cidrs?: [...string]
		networks?: string
	})
}
