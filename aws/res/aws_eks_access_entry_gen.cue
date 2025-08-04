package res

#aws_eks_access_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_access_entry")
	close({
		access_entry_arn?: string
		cluster_name!:     string
		created_at?:       string
		id?:               string
		kubernetes_groups?: [...string]
		modified_at?: string
		timeouts?:    #timeouts

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		principal_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:      string
		user_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
