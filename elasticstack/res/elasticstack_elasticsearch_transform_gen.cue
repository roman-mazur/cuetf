package res

import "list"

#elasticstack_elasticsearch_transform: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_transform")
	align_checkpoints?:     bool
	dates_as_epoch_millis?: bool
	deduce_mappings?:       bool
	defer_validation?:      bool
	description?:           string
	docs_per_second?:       number
	enabled?:               bool
	frequency?:             string
	id?:                    string
	latest?:                string
	max_page_search_size?:  number
	metadata?:              string
	name!:                  string
	num_failure_retries?:   number
	pivot?:                 string
	timeout?:               string
	unattended?:            bool
	destination?: #destination | list.MaxItems(1) & [_, ...] & [...#destination]
	retention_policy?: #retention_policy | list.MaxItems(1) & [...#retention_policy]
	source?: #source | list.MaxItems(1) & [_, ...] & [...#source]
	sync?: #sync | list.MaxItems(1) & [...#sync]

	#destination: {
		index!:    string
		pipeline?: string
	}

	#retention_policy: {
		time?: #retention_policy.#time | list.MaxItems(1) & [_, ...] & [...#retention_policy.#time]

		#time: {
			field!:   string
			max_age!: string
		}
	}

	#source: {
		indices!: [...string]
		query?:            string
		runtime_mappings?: string
	}

	#sync: {
		time?: #sync.#time | list.MaxItems(1) & [_, ...] & [...#sync.#time]

		#time: {
			delay?: string
			field!: string
		}
	}
}
