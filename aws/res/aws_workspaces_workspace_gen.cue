package res

import "list"

#aws_workspaces_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_workspace")
	close({
		bundle_id!:                      string
		computer_name?:                  string
		directory_id!:                   string
		id?:                             string
		ip_address?:                     string
		region?:                         string
		root_volume_encryption_enabled?: bool
		timeouts?:                       #timeouts
		state?:                          string
		tags?: [string]: string
		workspace_properties?: matchN(1, [#workspace_properties, list.MaxItems(1) & [...#workspace_properties]])
		tags_all?: [string]: string
		user_name!:                      string
		user_volume_encryption_enabled?: bool
		volume_encryption_key?:          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#workspace_properties: close({
		compute_type_name?:                         string
		root_volume_size_gib?:                      number
		running_mode?:                              string
		running_mode_auto_stop_timeout_in_minutes?: number
		user_volume_size_gib?:                      number
	})
}
