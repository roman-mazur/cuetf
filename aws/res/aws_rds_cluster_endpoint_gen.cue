package res

#aws_rds_cluster_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_rds_cluster_endpoint")
	close({
		arn?:                         string
		cluster_endpoint_identifier!: string
		cluster_identifier!:          string
		custom_endpoint_type!:        string
		endpoint?:                    string
		excluded_members?: [...string]
		id?:     string
		region?: string
		static_members?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
