package res

#github_emu_group_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_emu_group_mapping")
	etag?:      string
	group_id!:  number
	id?:        string
	team_slug!: string
}
