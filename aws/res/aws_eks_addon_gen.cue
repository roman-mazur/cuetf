package res

#aws_eks_addon: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_addon")
	close({
		addon_name!: string
		pod_identity_association?: matchN(1, [#pod_identity_association, [...#pod_identity_association]])
		addon_version?:        string
		arn?:                  string
		cluster_name!:         string
		configuration_values?: string
		created_at?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                      string
		id?:                          string
		timeouts?:                    #timeouts
		modified_at?:                 string
		preserve?:                    bool
		resolve_conflicts_on_create?: string
		resolve_conflicts_on_update?: string
		service_account_role_arn?:    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#pod_identity_association: close({
		role_arn!:        string
		service_account!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
