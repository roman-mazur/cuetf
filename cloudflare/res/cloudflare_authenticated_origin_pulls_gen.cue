package res

#cloudflare_authenticated_origin_pulls: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_authenticated_origin_pulls")
	authenticated_origin_pulls_certificate?: string
	enabled!:                                bool
	hostname?:                               string
	id?:                                     string
	zone_id!:                                string
}
