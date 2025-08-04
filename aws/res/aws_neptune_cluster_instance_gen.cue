package res

#aws_neptune_cluster_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_neptune_cluster_instance")
	close({
		address?:                    string
		apply_immediately?:          bool
		arn?:                        string
		auto_minor_version_upgrade?: bool
		availability_zone?:          string
		cluster_identifier!:         string
		dbi_resource_id?:            string
		endpoint?:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                       string
		engine?:                       string
		engine_version?:               string
		id?:                           string
		identifier?:                   string
		identifier_prefix?:            string
		instance_class!:               string
		timeouts?:                     #timeouts
		kms_key_arn?:                  string
		neptune_parameter_group_name?: string
		neptune_subnet_group_name?:    string
		port?:                         number
		preferred_backup_window?:      string
		preferred_maintenance_window?: string
		promotion_tier?:               number
		publicly_accessible?:          bool
		skip_final_snapshot?:          bool
		storage_encrypted?:            bool
		storage_type?:                 string
		tags?: [string]:     string
		tags_all?: [string]: string
		writer?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
