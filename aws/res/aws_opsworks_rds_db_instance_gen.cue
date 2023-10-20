package res

#aws_opsworks_rds_db_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_rds_db_instance")
	db_password:         string
	db_user:             string
	id?:                 string
	rds_db_instance_arn: string
	stack_id:            string
}
