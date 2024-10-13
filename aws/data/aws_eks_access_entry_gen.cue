package data

#aws_eks_access_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_access_entry")
	access_entry_arn?: string
	cluster_name!:     string
	created_at?:       string
	id?:               string
	kubernetes_groups?: [...string]
	modified_at?:   string
	principal_arn!: string
	tags?: [string]: string
	tags_all?: [string]: string
	type?:      string
	user_name?: string
}
