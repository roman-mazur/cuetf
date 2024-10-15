package res

#aws_s3control_access_grant: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_access_grant")
	access_grant_arn?:          string
	access_grant_id?:           string
	access_grants_location_id!: string
	account_id?:                string
	grant_scope?:               string
	id?:                        string
	permission!:                string
	s3_prefix_type?:            string
	tags?: [string]:     string
	tags_all?: [string]: string
	access_grants_location_configuration?: #access_grants_location_configuration | [...#access_grants_location_configuration]
	grantee?: #grantee | [...#grantee]

	#access_grants_location_configuration: s3_sub_prefix?: string

	#grantee: {
		grantee_identifier!: string
		grantee_type!:       string
	}
}
