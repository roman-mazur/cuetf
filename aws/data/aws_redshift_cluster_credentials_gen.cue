package data

#aws_redshift_cluster_credentials: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_cluster_credentials")
	auto_create?:        bool
	cluster_identifier!: string
	db_groups?: [...string]
	db_name?:          string
	db_password?:      string
	db_user!:          string
	duration_seconds?: number
	expiration?:       string
	id?:               string
}
