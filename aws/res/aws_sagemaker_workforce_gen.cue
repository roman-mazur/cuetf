package res

import "list"

#aws_sagemaker_workforce: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_workforce")
	arn?:            string
	id?:             string
	subdomain?:      string
	workforce_name!: string
	cognito_config?: #cognito_config | list.MaxItems(1) & [...#cognito_config]
	oidc_config?: #oidc_config | list.MaxItems(1) & [...#oidc_config]
	source_ip_config?: #source_ip_config | list.MaxItems(1) & [...#source_ip_config]
	workforce_vpc_config?: #workforce_vpc_config | list.MaxItems(1) & [...#workforce_vpc_config]

	#cognito_config: {
		client_id!: string
		user_pool!: string
	}

	#oidc_config: {
		authentication_request_extra_params?: [string]: string
		authorization_endpoint!: string
		client_id!:              string
		client_secret!:          string
		issuer!:                 string
		jwks_uri!:               string
		logout_endpoint!:        string
		scope?:                  string
		token_endpoint!:         string
		user_info_endpoint!:     string
	}

	#source_ip_config: cidrs!: [...string]

	#workforce_vpc_config: {
		security_group_ids?: [...string]
		subnets?: [...string]
		vpc_endpoint_id?: string
		vpc_id?:          string
	}
}
