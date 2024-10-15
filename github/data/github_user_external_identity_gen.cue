package data

#github_user_external_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_user_external_identity")
	id?:    string
	login?: string
	saml_identity?: [string]: string
	scim_identity?: [string]: string
	username!: string
}
