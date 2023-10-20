package res

#aws_db_instance_role_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_db_instance_role_association")
	db_instance_identifier: string
	feature_name:           string
	id?:                    string
	role_arn:               string
}
