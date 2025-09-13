package data

#aws_workspaces_workspace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspaces_workspace")
	close({
		bundle_id?:     string
		computer_name?: string
		directory_id?:  string
		id?:            string
		ip_address?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                         string
		root_volume_encryption_enabled?: bool
		state?:                          string
		tags?: [string]: string
		user_name?:                      string
		user_volume_encryption_enabled?: bool
		volume_encryption_key?:          string
		workspace_id?:                   string
		workspace_properties?: [...close({
			compute_type_name?:                         string
			root_volume_size_gib?:                      number
			running_mode?:                              string
			running_mode_auto_stop_timeout_in_minutes?: number
			user_volume_size_gib?:                      number
		})]
	})
}
