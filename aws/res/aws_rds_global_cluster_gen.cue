package res

#aws_rds_global_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_global_cluster")
	close({
		arn?:                      string
		database_name?:            string
		deletion_protection?:      bool
		endpoint?:                 string
		engine?:                   string
		engine_lifecycle_support?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                    string
		engine_version?:            string
		engine_version_actual?:     string
		force_destroy?:             bool
		timeouts?:                  #timeouts
		global_cluster_identifier!: string
		global_cluster_members?: [...close({
			db_cluster_arn?: string
			is_writer?:      bool
		})]
		global_cluster_resource_id?:   string
		id?:                           string
		source_db_cluster_identifier?: string
		storage_encrypted?:            bool
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
