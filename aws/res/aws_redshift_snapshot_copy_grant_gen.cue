package res

#aws_redshift_snapshot_copy_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_snapshot_copy_grant")
	arn?:                     string
	id?:                      string
	kms_key_id?:              string
	snapshot_copy_grant_name: string
	tags?: [string]: string
	tags_all?: [string]: string
}
