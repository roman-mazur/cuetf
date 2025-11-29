package res

import "list"

#google_folder_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_folder_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:   string
		folder!: string
		id?:     string
		members!: [...string]
		role!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
