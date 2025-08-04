package res

import "list"

#elasticstack_elasticsearch_transform: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_transform")
	close({
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
		destination?: matchN(1, [#destination, list.MaxItems(1) & [_, ...] & [...#destination]])
		metadata?:            string
		name!:                string
		num_failure_retries?: number
		pivot?:               string
		timeout?:             string
		unattended?:          bool
		retention_policy?: matchN(1, [#retention_policy, list.MaxItems(1) & [...#retention_policy]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		sync?: matchN(1, [#sync, list.MaxItems(1) & [...#sync]])
	})

	#destination: close({
		aliases?: matchN(1, [_#defs."/$defs/destination/$defs/aliases", [..._#defs."/$defs/destination/$defs/aliases"]])
		index!:    string
		pipeline?: string
	})

	#retention_policy: close({
		time?: matchN(1, [_#defs."/$defs/retention_policy/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/retention_policy/$defs/time"]])
	})

	#source: close({
		indices!: [...string]
		query?:            string
		runtime_mappings?: string
	})

	#sync: close({
		time?: matchN(1, [_#defs."/$defs/sync/$defs/time", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/sync/$defs/time"]])
	})

	_#defs: "/$defs/destination/$defs/aliases": close({
		alias!:            string
		move_on_creation?: bool
	})

	_#defs: "/$defs/retention_policy/$defs/time": close({
		field!:   string
		max_age!: string
	})

	_#defs: "/$defs/sync/$defs/time": close({
		delay?: string
		field!: string
	})
}
