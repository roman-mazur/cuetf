package res

import "list"

#google_sourcerepo_repository_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_sourcerepo_repository_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:       string
		id?:         string
		member!:     string
		project?:    string
		repository!: string
		role!:       string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
