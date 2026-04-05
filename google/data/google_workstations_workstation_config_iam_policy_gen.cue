package data

#google_workstations_workstation_config_iam_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_workstations_workstation_config_iam_policy")
	close({
		etag?:                   string
		id?:                     string
		location?:               string
		policy_data?:            string
		project?:                string
		workstation_cluster_id!: string
		workstation_config_id!:  string
	})
}
