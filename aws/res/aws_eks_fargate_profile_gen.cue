package res

#aws_eks_fargate_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_eks_fargate_profile")
	close({
		arn?:                    string
		cluster_name!:           string
		fargate_profile_name!:   string
		id?:                     string
		pod_execution_role_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		selector!: matchN(1, [#selector, [_, ...] & [...#selector]])
		status?:   string
		timeouts?: #timeouts
		subnet_ids?: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#selector: close({
		labels?: [string]: string
		namespace!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
