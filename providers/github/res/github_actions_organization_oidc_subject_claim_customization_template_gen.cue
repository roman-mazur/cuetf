package res

#github_actions_organization_oidc_subject_claim_customization_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_actions_organization_oidc_subject_claim_customization_template")
	close({
		id?: string

		// A list of OpenID Connect claims.
		include_claim_keys!: [...string]
	})
}
