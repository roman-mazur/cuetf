package res

#aws_eks_fargate_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_fargate_profile")
	arn?:                   string
	cluster_name:           string
	fargate_profile_name:   string
	id?:                    string
	pod_execution_role_arn: string
	status?:                string
	subnet_ids?: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	selector?: #selector | [_, ...] & [...#selector]
	timeouts?: #timeouts

	#selector: {
		labels?: [string]: string
		namespace: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
