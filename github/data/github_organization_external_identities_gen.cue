package data

#github_organization_external_identities: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_organization_external_identities")
	id?: string
	identities?: [...{
		login?: string
		saml_identity?: [string]: string
		scim_identity?: [string]: string
	}]
}
