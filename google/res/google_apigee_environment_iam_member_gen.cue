package res

import "list"

#google_apigee_environment_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_environment_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		env_id!: string
		etag?:   string
		id?:     string
		member!: string
		org_id!: string
		role!:   string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
