package data

#aws_eks_addon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_addon")
	addon_name:                string
	addon_version?:            string
	arn?:                      string
	cluster_name:              string
	configuration_values?:     string
	created_at?:               string
	id?:                       string
	modified_at?:              string
	service_account_role_arn?: string
	tags?: [string]: string
}
