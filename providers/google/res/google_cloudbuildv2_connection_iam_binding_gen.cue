package res

import "list"

#google_cloudbuildv2_connection_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloudbuildv2_connection_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:     string
		id?:       string
		location?: string
		members!: [...string]
		name!:    string
		project?: string
		role!:    string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
