package res

import "list"

#google_dataproc_metastore_table_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataproc_metastore_table_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		database_id!: string
		etag?:        string
		id?:          string
		location?:    string
		member!:      string
		project?:     string
		role!:        string
		service_id!:  string
		table!:       string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
