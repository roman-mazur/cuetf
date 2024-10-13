package res

#aws_prometheus_scraper: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_prometheus_scraper")
	alias?:                string
	arn?:                  string
	id?:                   string
	role_arn?:             string
	scrape_configuration!: string
	tags?: [string]:     string
	tags_all?: [string]: string
	destination?: #destination | [...#destination]
	source?: #source | [...#source]
	timeouts?: #timeouts

	#destination: {
		amp?: #destination.#amp | [...#destination.#amp]

		#amp: workspace_arn!: string
	}

	#source: {
		eks?: #source.#eks | [...#source.#eks]

		#eks: {
			cluster_arn!: string
			security_group_ids?: [...string]
			subnet_ids!: [...string]
		}
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
