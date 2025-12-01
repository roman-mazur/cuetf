package data

#aws_eks_addon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_eks_addon")
	close({
		addon_name!:    string
		addon_version?: string
		arn?:           string
		cluster_name!:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		configuration_values?: string
		created_at?:           string
		id?:                   string
		modified_at?:          string
		pod_identity_association?: [...close({
			role_arn?:        string
			service_account?: string
		})]
		service_account_role_arn?: string
		tags?: [string]: string
	})
}
