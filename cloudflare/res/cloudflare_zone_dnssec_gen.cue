package res

#cloudflare_zone_dnssec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_dnssec")
	algorithm?:        string
	digest?:           string
	digest_algorithm?: string
	digest_type?:      string
	ds?:               string
	flags?:            number
	id?:               string
	key_tag?:          number
	key_type?:         string
	modified_on?:      string
	public_key?:       string
	status?:           string
	zone_id!:          string
}
