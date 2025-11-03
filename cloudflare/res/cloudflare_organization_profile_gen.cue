package res

#cloudflare_organization_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_organization_profile")
	close({
		business_address!:  string
		business_email!:    string
		business_name!:     string
		business_phone!:    string
		external_metadata!: string
		organization_id!:   string
	})
}
