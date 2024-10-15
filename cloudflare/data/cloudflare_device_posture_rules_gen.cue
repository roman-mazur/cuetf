package data

#cloudflare_device_posture_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_device_posture_rules")
	account_id!: string
	id?:         string
	name?:       string
	rules?: [...{
		description?: string
		expiration?:  string
		id?:          string
		name?:        string
		schedule?:    string
		type?:        string
	}]
	type?: string
}
