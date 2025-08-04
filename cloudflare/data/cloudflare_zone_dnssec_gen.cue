package data

#cloudflare_zone_dnssec: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone_dnssec")
	close({
		algorithm?:           string
		digest?:              string
		digest_algorithm?:    string
		digest_type?:         string
		dnssec_multi_signer?: bool
		dnssec_presigned?:    bool
		dnssec_use_nsec3?:    bool
		ds?:                  string
		flags?:               number
		key_tag?:             number
		key_type?:            string
		modified_on?:         string
		public_key?:          string
		status?:              string
		zone_id!:             string
	})
}
