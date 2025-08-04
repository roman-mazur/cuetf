package res

import "list"

#aws_eks_identity_provider_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eks_identity_provider_config")
	close({
		arn?: string
		oidc?: matchN(1, [#oidc, list.MaxItems(1) & [_, ...] & [...#oidc]])
		cluster_name!: string
		id?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#oidc: close({
		client_id!:                     string
		groups_claim?:                  string
		groups_prefix?:                 string
		identity_provider_config_name!: string
		issuer_url!:                    string
		required_claims?: [string]: string
		username_claim?:  string
		username_prefix?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
