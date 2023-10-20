package data

#aws_redshift_orderable_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_orderable_cluster")
	availability_zones?: [...string]
	cluster_type?:    string
	cluster_version?: string
	id?:              string
	node_type?:       string
	preferred_node_types?: [...string]
}
