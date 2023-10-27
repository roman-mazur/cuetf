package data

#github_tree: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_tree")
	entries?: [...{
		mode?: string
		path?: string
		sha?:  string
		size?: number
		type?: string
	}]
	id?:        string
	recursive?: bool
	repository: string
	tree_sha:   string
}
