package res

import "list"

#google_workstations_workstation_iam_member: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_workstations_workstation_iam_member")
	close({
		condition?: matchN(1, [#condition, list.MaxItems(1) & [...#condition]])
		etag?:                   string
		id?:                     string
		location?:               string
		member!:                 string
		project?:                string
		role!:                   string
		workstation_cluster_id!: string
		workstation_config_id!:  string
		workstation_id!:         string
	})

	#condition: close({
		description?: string
		expression!:  string
		title!:       string
	})
}
