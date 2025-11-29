package res

import "list"

#google_bigquery_table_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_bigquery_table_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		dataset_id!: string
		etag?:       string
		id?:         string
		member!:     string
		project?:    string
		role!:       string
		table_id!:   string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
