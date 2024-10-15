package res

#aws_ssoadmin_trusted_token_issuer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_trusted_token_issuer")
	arn?:          string
	client_token?: string
	id?:           string
	instance_arn!: string
	name!:         string
	tags?: [string]:     string
	tags_all?: [string]: string
	trusted_token_issuer_type!: string
	trusted_token_issuer_configuration?: #trusted_token_issuer_configuration | [...#trusted_token_issuer_configuration]

	#trusted_token_issuer_configuration: {
		oidc_jwt_configuration?: #trusted_token_issuer_configuration.#oidc_jwt_configuration | [...#trusted_token_issuer_configuration.#oidc_jwt_configuration]

		#oidc_jwt_configuration: {
			claim_attribute_path!:          string
			identity_store_attribute_path!: string
			issuer_url!:                    string
			jwks_retrieval_option!:         string
		}
	}
}
