package res

import "list"

#cloudflare_record: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_record")
	allow_overwrite?: bool
	comment?:         string
	created_on?:      string
	hostname?:        string
	id?:              string
	metadata?: [string]: string
	modified_on?: string
	name:         string
	priority?:    number
	proxiable?:   bool
	proxied?:     bool
	tags?: [...string]
	ttl?:      number
	type:      string
	value?:    string
	zone_id:   string
	data?:     #data | list.MaxItems(1) & [...#data]
	timeouts?: #timeouts

	#data: {
		algorithm?:      number
		altitude?:       number
		certificate?:    string
		content?:        string
		digest?:         string
		digest_type?:    number
		fingerprint?:    string
		flags?:          string
		key_tag?:        number
		lat_degrees?:    number
		lat_direction?:  string
		lat_minutes?:    number
		lat_seconds?:    number
		long_degrees?:   number
		long_direction?: string
		long_minutes?:   number
		long_seconds?:   number
		matching_type?:  number
		name?:           string
		order?:          number
		port?:           number
		precision_horz?: number
		precision_vert?: number
		preference?:     number
		priority?:       number
		proto?:          string
		protocol?:       number
		public_key?:     string
		regex?:          string
		replacement?:    string
		selector?:       number
		service?:        string
		size?:           number
		tag?:            string
		target?:         string
		type?:           number
		usage?:          number
		value?:          string
		weight?:         number
	}

	#timeouts: {
		create?: string
		update?: string
	}
}
