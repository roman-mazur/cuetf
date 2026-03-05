package res

#scaleway_tem_domain_validation: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_tem_domain_validation")
	close({
		timeouts?: #timeouts

		// The id of domain name used when sending emails.
		domain_id!: string
		id?:        string

		// The region you want to attach the resource to
		region?: string

		// Maximum wait time in second before returning an error.
		timeout?: number

		// Indicates if the domain is verified for email sending
		validated?: bool
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
	})
}
