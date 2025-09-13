package res

import "list"

#google_beyondcorp_security_gateway_application_iam_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_beyondcorp_security_gateway_application_iam_binding")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		application_id!: string
		etag?:           string
		id?:             string
		members!: [...string]
		project?:             string
		role!:                string
		security_gateway_id!: string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
