package res

import "list"

#aws_eks_access_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_access_policy_association")
	close({
		associated_at?: string
		access_scope?: matchN(1, [#access_scope, list.MaxItems(1) & [_, ...] & [...#access_scope]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		cluster_name!:  string
		id?:            string
		modified_at?:   string
		policy_arn!:    string
		principal_arn!: string
		timeouts?:      #timeouts
	})

	#access_scope: close({
		namespaces?: [...string]
		type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
