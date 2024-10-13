package res

#aws_rds_cluster_role_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rds_cluster_role_association")
	db_cluster_identifier!: string
	feature_name!:          string
	id?:                    string
	role_arn!:              string
	timeouts?:              #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
