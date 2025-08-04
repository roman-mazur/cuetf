package res

#github_issue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_issue")
	close({
		assignees?: [...string]
		body?:     string
		etag?:     string
		id?:       string
		issue_id?: number
		labels?: [...string]
		milestone_number?: number
		"number"?:         number
		repository!:       string
		title!:            string
	})
}
