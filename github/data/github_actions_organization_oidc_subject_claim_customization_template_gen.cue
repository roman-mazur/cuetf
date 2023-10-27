package data

#github_actions_organization_oidc_subject_claim_customization_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/github_actions_organization_oidc_subject_claim_customization_template")
	id?: string
	include_claim_keys?: [...string]
}
