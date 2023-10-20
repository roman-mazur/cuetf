package res

#aws_dms_replication_task: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_replication_task")
	cdc_start_position?:        string
	cdc_start_time?:            string
	id?:                        string
	migration_type:             string
	replication_instance_arn:   string
	replication_task_arn?:      string
	replication_task_id:        string
	replication_task_settings?: string
	source_endpoint_arn:        string
	start_replication_task?:    bool
	status?:                    string
	table_mappings:             string
	tags?: [string]: string
	tags_all?: [string]: string
	target_endpoint_arn: string
}
