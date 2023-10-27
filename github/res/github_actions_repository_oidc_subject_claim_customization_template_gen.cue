package res

#github_actions_repository_oidc_subject_claim_customization_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_repository_oidc_subject_claim_customization_template")
	id?: string
	include_claim_keys?: [...string]
	repository:  string
	use_default: bool
}
