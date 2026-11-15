package res

cloudflare_zero_trust_casb_finding_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_casb_finding_type")
	close({
		account_id!: string

		// When true, this finding type applies to every current and future integration of the vendor.
		applies_to_all_integrations!: bool

		// Asset class this finding type applies to (PascalCase, e.g. GoogleWorkspaceFile)
		asset_class!: string

		// Canonical vendor enum for the platform whose assets this finding type evaluates.
		// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE",
		// "DROPBOX", "GITHUB", "GOOGLE_CLOUD_PLATFORM", "GOOGLE_WORKSPACE", "JIRA",
		// "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
		asset_vendor!: string

		// Category information for a finding.
		category?: close({
			// The type of the observation.
			// Available values: "Issue", "Insight", "Activity".
			observation?: string

			// The product category.
			// Available values: "SaaS", "Cloud".
			product?: string

			// The type of the finding category.
			// Available values: "Content", "Posture".
			type?: string
		})

		// Timestamp when the finding type was created.
		created_at?: string

		// Human-readable description of the finding type. Cannot be empty. Maximum 4096 characters.
		description!: string

		// Rego expression body for the policy. `package cloudflare.casb.custom` and
		// `import rego.v1` are added automatically. Do not include package or import
		// declarations. This field cannot be changed after creation. Maximum 4096
		// characters.
		expression!: string

		// The unique identifier of the finding.
		id?: string

		// Required and non-empty when applies_to_all_integrations is false; omit when it is true.
		integration_ids?: [...string]

		// Number of currently active finding instances across the account's
		// integrations. Zero when none have been detected.
		match_count?: number

		// Human-readable name for the finding type. Maximum 256 characters.
		name!: string

		// Whether the finding type is system-managed or customer-created.
		// Available values: "system", "custom".
		origin?: string

		// Whether evaluation of this finding type is suspended by an operator. Present only when true.
		quarantined?: bool

		// Default severity used when no integration-specific severity override exists.
		// Available values: "Critical", "High", "Medium", "Low".
		severity!: string

		// Timestamp when the finding type was last updated.
		updated_at?: string

		// The SaaS/Cloud vendor of the platform with which the finding is associated.
		vendor?: string

		// Current version of the finding type. Incremented on each update.
		version?: number
	})
}
