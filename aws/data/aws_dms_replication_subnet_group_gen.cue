package data

#aws_dms_replication_subnet_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dms_replication_subnet_group")
	id?:                                   string
	replication_subnet_group_arn?:         string
	replication_subnet_group_description?: string
	replication_subnet_group_id:           string
	subnet_group_status?:                  string
	subnet_ids?: [...string]
	tags?: [string]: string
	vpc_id?: string
}
