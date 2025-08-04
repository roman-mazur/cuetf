package res

#aws_eks_fargate_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_fargate_profile")
	close({
		arn?:                    string
		cluster_name!:           string
		fargate_profile_name!:   string
		id?:                     string
		pod_execution_role_arn!: string
		region?:                 string
		status?:                 string
		selector?: matchN(1, [#selector, [_, ...] & [...#selector]])
		subnet_ids?: [...string]
		timeouts?: #timeouts
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
