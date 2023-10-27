package res

#cloudflare_load_balancer_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_load_balancer_pool")
	account_id: string
	check_regions?: [...string]
	created_on?:         string
	description?:        string
	enabled?:            bool
	id?:                 string
	latitude?:           number
	longitude?:          number
	minimum_origins?:    number
	modified_on?:        string
	monitor?:            string
	name:                string
	notification_email?: string
	load_shedding?:      #load_shedding | [...#load_shedding]
	origin_steering?:    #origin_steering | [...#origin_steering]
	origins?:            #origins | [_, ...] & [...#origins]

	#load_shedding: {
		default_percent?: number
		default_policy?:  string
		session_percent?: number
		session_policy?:  string
	}

	#origin_steering: policy?: string

	#origins: {
		address:  string
		enabled?: bool
		name:     string
		weight?:  number
		header?:  #origins.#header | [...#origins.#header]

		#header: {
			header: string
			values: [...string]
		}
	}
}
