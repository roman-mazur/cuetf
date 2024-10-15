package data

#aws_ami_ids: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ami_ids")
	executable_users?: [...string]
	id?: string
	ids?: [...string]
	include_deprecated?: bool
	name_regex?:         string
	owners!: [...string]
	sort_ascending?: bool
	filter?: #filter | [...#filter]
	timeouts?: #timeouts

	#filter: {
		name!: string
		values!: [...string]
	}

	#timeouts: read?: string
}
