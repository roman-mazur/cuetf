package res

#aws_redshift_cluster_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_cluster_snapshot")
	arn?:                              string
	cluster_identifier!:               string
	id?:                               string
	kms_key_id?:                       string
	manual_snapshot_retention_period?: number
	owner_account?:                    string
	snapshot_identifier!:              string
	tags?: [string]:     string
	tags_all?: [string]: string
}
