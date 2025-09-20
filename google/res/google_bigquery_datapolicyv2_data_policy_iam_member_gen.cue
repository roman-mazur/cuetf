package res

import "list"

#google_bigquery_datapolicyv2_data_policy_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_datapolicyv2_data_policy_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		data_policy_id!: string
		etag?:           string
		id?:             string
		location?:       string
		member!:         string
		project?:        string
		role!:           string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
