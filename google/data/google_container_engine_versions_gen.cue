package data

#google_container_engine_versions: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_engine_versions")
	close({
		default_cluster_version?: string
		id?:                      string
		latest_master_version?:   string
		latest_node_version?:     string
		location?:                string
		project?:                 string
		release_channel_default_version?: [string]:        string
		release_channel_latest_version?: [string]:         string
		release_channel_upgrade_target_version?: [string]: string
		valid_master_versions?: [...string]
		valid_node_versions?: [...string]
		version_prefix?: string
	})
}
