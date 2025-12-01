package res

import "list"

#aws_sagemaker_workteam: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_sagemaker_workteam")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		description!: string
		id?:          string
		member_definition!: matchN(1, [#member_definition, list.MaxItems(10) & [_, ...] & [...#member_definition]])
		subdomain?: string
		notification_configuration?: matchN(1, [#notification_configuration, list.MaxItems(1) & [...#notification_configuration]])
		tags?: [string]:     string
		tags_all?: [string]: string
		workforce_name?: string
		worker_access_configuration?: matchN(1, [#worker_access_configuration, list.MaxItems(1) & [...#worker_access_configuration]])
		workteam_name!: string
	})

	#member_definition: close({
		cognito_member_definition?: matchN(1, [_#defs."/$defs/member_definition/$defs/cognito_member_definition", list.MaxItems(1) & [..._#defs."/$defs/member_definition/$defs/cognito_member_definition"]])
		oidc_member_definition?: matchN(1, [_#defs."/$defs/member_definition/$defs/oidc_member_definition", list.MaxItems(1) & [..._#defs."/$defs/member_definition/$defs/oidc_member_definition"]])
	})

	#notification_configuration: close({
		notification_topic_arn?: string
	})

	#worker_access_configuration: close({
		s3_presign?: matchN(1, [_#defs."/$defs/worker_access_configuration/$defs/s3_presign", list.MaxItems(1) & [..._#defs."/$defs/worker_access_configuration/$defs/s3_presign"]])
	})

	_#defs: "/$defs/member_definition/$defs/cognito_member_definition": close({
		client_id!:  string
		user_group!: string
		user_pool!:  string
	})

	_#defs: "/$defs/member_definition/$defs/oidc_member_definition": close({
		groups!: [...string]
	})

	_#defs: "/$defs/worker_access_configuration/$defs/s3_presign": close({
		iam_policy_constraints?: matchN(1, [_#defs."/$defs/worker_access_configuration/$defs/s3_presign/$defs/iam_policy_constraints", list.MaxItems(1) & [..._#defs."/$defs/worker_access_configuration/$defs/s3_presign/$defs/iam_policy_constraints"]])
	})

	_#defs: "/$defs/worker_access_configuration/$defs/s3_presign/$defs/iam_policy_constraints": close({
		source_ip?:     string
		vpc_source_ip?: string
	})
}
