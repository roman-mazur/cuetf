package data

#github_ip_ranges: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_ip_ranges")
	close({
		// An array of IP addresses in CIDR format specifying the
		// addresses that GitHub Actions will originate from.
		actions?: [...string]

		// An array of IPv4 addresses in CIDR format specifying the
		// addresses that GitHub Actions will originate from.
		actions_ipv4?: [...string]

		// An array of IPv6 addresses in CIDR format specifying the
		// addresses that GitHub Actions will originate from.
		actions_ipv6?: [...string]

		// An array of IP addresses in CIDR format specifying the
		// addresses that GitHub Actions macOS runners will originate
		// from.
		actions_macos?: [...string]

		// An array of IPv4 addresses in CIDR format specifying the
		// addresses that GitHub Actions macOS runners will originate
		// from.
		actions_macos_ipv4?: [...string]

		// An array of IPv6 addresses in CIDR format specifying the
		// addresses that GitHub Actions macOS runners will originate
		// from.
		actions_macos_ipv6?: [...string]
		api?: [...string]
		api_ipv4?: [...string]
		api_ipv6?: [...string]
		git?: [...string]
		git_ipv4?: [...string]
		git_ipv6?: [...string]

		// An array of IP addresses in CIDR format specifying the
		// addresses that GitHub Enterprise Importer will originate from.
		github_enterprise_importer?: [...string]

		// An array of IPv4 addresses in CIDR format specifying the
		// addresses that GitHub Enterprise Importer will originate from.
		github_enterprise_importer_ipv4?: [...string]

		// An array of IPv6 addresses in CIDR format specifying the
		// addresses that GitHub Enterprise Importer will originate from.
		github_enterprise_importer_ipv6?: [...string]
		hooks?: [...string]
		hooks_ipv4?: [...string]
		hooks_ipv6?: [...string]
		id?: string
		importer?: [...string]
		importer_ipv4?: [...string]
		importer_ipv6?: [...string]
		packages?: [...string]
		packages_ipv4?: [...string]
		packages_ipv6?: [...string]
		pages?: [...string]
		pages_ipv4?: [...string]
		pages_ipv6?: [...string]
		web?: [...string]
		web_ipv4?: [...string]
		web_ipv6?: [...string]
	})
}
