package res

import "list"

#google_iap_app_engine_version_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_iap_app_engine_version_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		app_id!:     string
		etag?:       string
		id?:         string
		member!:     string
		project?:    string
		role!:       string
		service!:    string
		version_id!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
