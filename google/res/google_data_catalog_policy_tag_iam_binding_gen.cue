package res

import "list"

#google_data_catalog_policy_tag_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_data_catalog_policy_tag_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?: string
		id?:   string
		members!: [...string]
		policy_tag!: string
		role!:       string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
