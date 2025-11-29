package res

import "list"

#google_storage_bucket_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_bucket_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		bucket!:   string
		etag?:     string
		id?:       string
		member!:   string
		role!:     string
		timeouts?: #timeouts
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})

	#timeouts: close({
		create?: string
	})
}
