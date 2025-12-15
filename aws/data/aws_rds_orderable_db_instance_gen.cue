package data

#aws_rds_orderable_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_rds_orderable_db_instance")
	close({
		availability_zone_group?: string
		availability_zones?: [...string]
		engine!:                   string
		engine_latest_version?:    bool
		engine_version?:           string
		id?:                       string
		instance_class?:           string
		license_model?:            string
		max_iops_per_db_instance?: number
		max_iops_per_gib?:         number
		max_storage_size?:         number
		min_iops_per_db_instance?: number
		min_iops_per_gib?:         number
		min_storage_size?:         number
		multi_az_capable?:         bool
		outpost_capable?:          bool

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		preferred_engine_versions?: [...string]
		preferred_instance_classes?: [...string]
		read_replica_capable?: bool
		storage_type?:         string
		supported_engine_modes?: [...string]
		supported_network_types?: [...string]
		supports_clusters?:                    bool
		supports_enhanced_monitoring?:         bool
		supports_global_databases?:            bool
		supports_iam_database_authentication?: bool
		supports_iops?:                        bool
		supports_kerberos_authentication?:     bool
		supports_multi_az?:                    bool
		supports_performance_insights?:        bool
		supports_storage_autoscaling?:         bool
		supports_storage_encryption?:          bool
		vpc?:                                  bool
	})
}
