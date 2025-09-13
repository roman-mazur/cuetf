package data

#google_service_account_jwt: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_service_account_jwt")
	close({
		delegates?: [...string]

		// Number of seconds until the JWT expires. If set and non-zero an
		// `exp` claim will be added to the payload derived from the
		// current timestamp plus expires_in seconds.
		expires_in?: number

		// A JSON-encoded JWT claims set that will be included in the
		// signed JWT.
		payload!:                string
		id?:                     string
		jwt?:                    string
		target_service_account!: string
	})
}
