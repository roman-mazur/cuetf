package data

#aws_neptune_orderable_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_neptune_orderable_db_instance")
	availability_zones?: [...string]
	engine?:                   string
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
	preferred_instance_classes?: [...string]
	read_replica_capable?:                 bool
	storage_type?:                         string
	supports_enhanced_monitoring?:         bool
	supports_iam_database_authentication?: bool
	supports_iops?:                        bool
	supports_performance_insights?:        bool
	supports_storage_encryption?:          bool
	vpc?:                                  bool
}
