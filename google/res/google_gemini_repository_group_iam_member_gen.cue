package res

import "list"

#google_gemini_repository_group_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_repository_group_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		code_repository_index!: string
		etag?:                  string
		id?:                    string
		location?:              string
		member!:                string
		project?:               string
		repository_group_id!:   string
		role!:                  string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
