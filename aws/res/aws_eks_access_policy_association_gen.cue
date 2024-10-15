package res

import "list"

#aws_eks_access_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_access_policy_association")
	associated_at?: string
	cluster_name!:  string
	id?:            string
	modified_at?:   string
	policy_arn!:    string
	principal_arn!: string
	access_scope?: #access_scope | list.MaxItems(1) & [_, ...] & [...#access_scope]
	timeouts?: #timeouts

	#access_scope: {
		namespaces?: [...string]
		type!: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
