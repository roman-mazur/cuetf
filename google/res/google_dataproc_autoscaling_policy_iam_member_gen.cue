package res

import "list"

#google_dataproc_autoscaling_policy_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_dataproc_autoscaling_policy_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:      string
		id?:        string
		location?:  string
		member!:    string
		policy_id!: string
		project?:   string
		role!:      string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
