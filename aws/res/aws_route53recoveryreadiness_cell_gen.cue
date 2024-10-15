package res

#aws_route53recoveryreadiness_cell: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_route53recoveryreadiness_cell")
	arn?:       string
	cell_name!: string
	cells?: [...string]
	id?: string
	parent_readiness_scopes?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: delete?: string
}
