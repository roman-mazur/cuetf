package res

import "list"

#google_billing_account_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_billing_account_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		billing_account_id!: string
		etag?:               string
		id?:                 string
		members!: [...string]
		role!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
