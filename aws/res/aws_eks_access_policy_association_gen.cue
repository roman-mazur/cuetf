package res

import "list"

#aws_eks_access_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_access_policy_association")
	close({
		access_scope?: matchN(1, [#access_scope, list.MaxItems(1) & [_, ...] & [...#access_scope]])
		associated_at?: string
		cluster_name!:  string
		id?:            string
		modified_at?:   string
		policy_arn!:    string
		principal_arn!: string
		region?:        string
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
