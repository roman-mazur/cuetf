package res

#cloudflare_zone: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zone")
	account_id!: string
	id?:         string
	jump_start?: bool
	meta?: [string]: bool
	name_servers?: [...string]
	paused?: bool
	plan?:   string
	status?: string
	type?:   string
	vanity_name_servers?: [...string]
	verification_key?: string
	zone!:             string
}
