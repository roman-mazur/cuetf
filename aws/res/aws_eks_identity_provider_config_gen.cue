package res

import "list"

#aws_eks_identity_provider_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eks_identity_provider_config")
	arn?:         string
	cluster_name: string
	id?:          string
	status?:      string
	tags?: [string]: string
	tags_all?: [string]: string
	oidc?:     #oidc | list.MaxItems(1) & [_, ...] & [...#oidc]
	timeouts?: #timeouts

	#oidc: {
		client_id:                     string
		groups_claim?:                 string
		groups_prefix?:                string
		identity_provider_config_name: string
		issuer_url:                    string
		required_claims?: [string]: string
		username_claim?:  string
		username_prefix?: string
	}

	#timeouts: {
		create?: string
		delete?: string
	}
}
