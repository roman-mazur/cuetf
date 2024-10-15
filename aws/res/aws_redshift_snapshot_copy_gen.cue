package res

#aws_redshift_snapshot_copy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_snapshot_copy")
	cluster_identifier!:               string
	destination_region!:               string
	id?:                               string
	manual_snapshot_retention_period?: number
	retention_period?:                 number
	snapshot_copy_grant_name?:         string
}
