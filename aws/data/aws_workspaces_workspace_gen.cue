package data

#aws_workspaces_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_workspace")
	bundle_id?:                      string
	computer_name?:                  string
	directory_id?:                   string
	id?:                             string
	ip_address?:                     string
	root_volume_encryption_enabled?: bool
	state?:                          string
	tags?: [string]: string
	user_name?:                      string
	user_volume_encryption_enabled?: bool
	volume_encryption_key?:          string
	workspace_id?:                   string
	workspace_properties?: [...{
		compute_type_name?:                         string
		root_volume_size_gib?:                      number
		running_mode?:                              string
		running_mode_auto_stop_timeout_in_minutes?: number
		user_volume_size_gib?:                      number
	}]
}
