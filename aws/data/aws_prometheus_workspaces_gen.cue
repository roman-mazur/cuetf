package data

#aws_prometheus_workspaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_prometheus_workspaces")
	alias_prefix?: string
	aliases?: [...string]
	arns?: [...string]
	id?: string
	workspace_ids?: [...string]
}
