package data

#aws_appstream_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_appstream_image")
	close({
		applications?: [...close({
			app_block_arn?: string
			arn?:           string
			created_time?:  string
			description?:   string
			display_name?:  string
			enabled?:       bool
			icon_s3_location?: [...close({
				s3_bucket?: string
				s3_key?:    string
			})]
			icon_url?: string
			instance_families?: [...string]
			launch_parameters?: string
			launch_path?:       string
			metadata?: [string]: string
			name?: string
			platforms?: [...string]
			working_directory?: string
		})]
		appstream_agent_version?: string
		arn?:                     string
		base_image_arn?:          string
		created_time?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		description?:             string
		display_name?:            string
		image_builder_name?:      string
		image_builder_supported?: bool
		image_permissions?: [...close({
			allow_fleet?:         bool
			allow_image_builder?: bool
		})]
		most_recent?:                     bool
		name?:                            string
		name_regex?:                      string
		platform?:                        string
		public_base_image_released_date?: string
		state?:                           string
		state_change_reason?: [...close({
			code?:    string
			message?: string
		})]
		type?: string
	})
}
