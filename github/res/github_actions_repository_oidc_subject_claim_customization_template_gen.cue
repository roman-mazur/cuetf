package res

#github_actions_repository_oidc_subject_claim_customization_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_actions_repository_oidc_subject_claim_customization_template")
	close({
		id?: string

		// A list of OpenID Connect claims.
		include_claim_keys?: [...string]

		// The name of the repository.
		repository!: string

		// Whether to use the default template or not. If 'true',
		// 'include_claim_keys' must not be set.
		use_default!: bool
	})
}
