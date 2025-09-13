package res

import "list"

#google_organization_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_organization_iam_binding")
	close({
		etag?: string
		id?:   string

		// The numeric ID of the organization in which you want to manage
		// the audit logging config.
		org_id!: string
		members!: [...string]
		role!: string
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
