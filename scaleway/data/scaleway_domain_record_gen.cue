package data

#scaleway_domain_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_domain_record")
	close({
		// The data of the record
		data?: string

		// The zone you want to add the record in
		dns_zone?: string

		// The FQDN of the record
		fqdn?: string

		// Return record based on client localisation
		geo_ip?: [...close({
			matches?: [...close({
				continents?: [...string]
				countries?: [...string]
				data?: string
			})]
		})]

		// Return record based on client localisation
		http_service?: [...close({
			ips?: [...string]
			must_contain?: string
			strategy?:     string
			url?:          string
			user_agent?:   string
		})]
		id?: string

		// The name of the record
		name?: string

		// The priority of the record
		priority?: number

		// The project_id you want to attach the resource to
		project_id?: string

		// The ID of the record
		record_id?: string

		// Does the DNS zone is the root zone or not
		root_zone?: bool

		// The ttl of the record
		ttl?: number

		// The type of the record
		type?: string

		// Return record based on client subnet
		view?: [...close({
			data?:   string
			subnet?: string
		})]

		// Return record based on weight
		weighted?: [...close({
			ip?:     string
			weight?: number
		})]
	})
}
