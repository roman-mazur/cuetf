package res

import "list"

#scaleway_domain_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_domain_record")
	close({
		geo_ip?: matchN(1, [#geo_ip, list.MaxItems(1) & [...#geo_ip]])
		http_service?: matchN(1, [#http_service, list.MaxItems(1) & [...#http_service]])
		timeouts?: #timeouts
		view?: matchN(1, [#view, [...#view]])
		weighted?: matchN(1, [#weighted, [...#weighted]])

		// The data of the record
		data!: string

		// The zone you want to add the record in
		dns_zone!: string

		// The FQDN of the record
		fqdn?: string
		id?:   string

		// The name of the record
		name?: string

		// The priority of the record
		priority?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// Does the DNS zone is the root zone or not
		root_zone?: bool

		// The ttl of the record
		ttl?: number

		// The type of the record
		type!: string
	})

	#geo_ip: close({
		matches!: matchN(1, [_#defs."/$defs/geo_ip/$defs/matches", [_, ...] & [..._#defs."/$defs/geo_ip/$defs/matches"]])
	})

	#http_service: close({
		// IPs to check
		ips!: [...string]

		// Text to search
		must_contain!: string

		// Strategy to return an IP from the IPs list
		strategy!: string

		// URL to match the must_contain text to validate an IP
		url!: string

		// User-agent used when checking the URL
		user_agent?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})

	#view: close({
		// The data of the view record
		data!: string

		// The subnet of the view
		subnet!: string
	})

	#weighted: close({
		// The weighted IP
		ip!: string

		// The weight of the IP
		weight!: number
	})

	_#defs: "/$defs/geo_ip/$defs/matches": close({
		// List of continents (eg: EU for Europe, NA for North America, AS
		// for Asia...). List of all continents code:
		// https://api.scaleway.com/domain-private/v2beta1/continents
		continents?: [...string]

		// List of countries (eg: FR for France, US for the United States,
		// GB for Great Britain...). List of all countries code:
		// https://api.scaleway.com/domain-private/v2beta1/countries
		countries?: [...string]

		// The data of the match result
		data!: string
	})
}
