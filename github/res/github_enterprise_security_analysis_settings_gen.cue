package res

#github_enterprise_security_analysis_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_enterprise_security_analysis_settings")
	close({
		// Whether GitHub Advanced Security is automatically enabled for
		// new repositories.
		advanced_security_enabled_for_new_repositories?: bool

		// The slug of the enterprise.
		enterprise_slug!: string

		// Whether secret scanning is automatically enabled for new
		// repositories.
		secret_scanning_enabled_for_new_repositories?: bool
		id?:                                           string

		// Custom URL for secret scanning push protection bypass
		// instructions.
		secret_scanning_push_protection_custom_link?: string

		// Whether secret scanning push protection is automatically
		// enabled for new repositories.
		secret_scanning_push_protection_enabled_for_new_repositories?: bool

		// Whether secret scanning validity checks are enabled.
		secret_scanning_validity_checks_enabled?: bool
	})
}
