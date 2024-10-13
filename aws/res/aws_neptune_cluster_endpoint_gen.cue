package res

#aws_neptune_cluster_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_neptune_cluster_endpoint")
	arn?:                         string
	cluster_endpoint_identifier!: string
	cluster_identifier!:          string
	endpoint?:                    string
	endpoint_type!:               string
	excluded_members?: [...string]
	id?: string
	static_members?: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
}
