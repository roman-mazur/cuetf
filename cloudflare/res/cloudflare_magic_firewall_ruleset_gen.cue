package res

#cloudflare_magic_firewall_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_magic_firewall_ruleset")
	account_id!:  string
	description?: string
	id?:          string
	name!:        string
	rules?: [...{
		[string]: string
	}]
}
