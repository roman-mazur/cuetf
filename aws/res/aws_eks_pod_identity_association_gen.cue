package res

#aws_eks_pod_identity_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_pod_identity_association")
	close({
		association_arn?:      string
		association_id?:       string
		cluster_name!:         string
		disable_session_tags?: bool
		external_id?:          string
		id?:                   string
		namespace!:            string
		region?:               string
		role_arn!:             string
		service_account!:      string
		tags?: [string]:     string
		tags_all?: [string]: string
		target_role_arn?: string
	})
}
