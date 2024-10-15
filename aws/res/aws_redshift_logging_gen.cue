package res

#aws_redshift_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_logging")
	bucket_name?:          string
	cluster_identifier!:   string
	id?:                   string
	log_destination_type?: string
	log_exports?: [...string]
	s3_key_prefix?: string
}
