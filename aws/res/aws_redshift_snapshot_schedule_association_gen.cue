package res

#aws_redshift_snapshot_schedule_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_snapshot_schedule_association")
	cluster_identifier!:  string
	id?:                  string
	schedule_identifier!: string
}
