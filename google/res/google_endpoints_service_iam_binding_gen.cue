package res

import "list"

#google_endpoints_service_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_endpoints_service_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?: string
		id?:   string
		members!: [...string]
		role!:         string
		service_name!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
