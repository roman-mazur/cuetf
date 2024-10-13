package res

#aws_eks_pod_identity_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_pod_identity_association")
	association_arn?: string
	association_id?:  string
	cluster_name!:    string
	id?:              string
	namespace!:       string
	role_arn!:        string
	service_account!: string
	tags?: [string]: string
	tags_all?: [string]: string
}
