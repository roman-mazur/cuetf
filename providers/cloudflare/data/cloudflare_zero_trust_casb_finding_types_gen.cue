package data

cloudflare_zero_trust_casb_finding_types: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_finding_types")
	close({
		account_id!: string

		// Sort direction for the primary field. Defaults to 'desc'.
		// Ties are resolved by case-insensitive name, then ID, both ascending regardless of direction.
		// Available values: "asc", "desc".
		direction?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// Return only finding types updated at or before this RFC 3339 timestamp (inclusive).
		max_updated_at?: string

		// Return only finding types updated at or after this RFC 3339 timestamp (inclusive).
		min_updated_at?: string

		// Field to sort by (case-insensitive). Defaults to 'created'.
		// Name and vendor sorting is case-insensitive; vendor uses friendly provider names.
		// Ascending order: type Content then Posture; origin custom then system;
		// severity Low, Medium, High, Critical.
		// Available values: "created", "updated", "match_count", "name", "vendor",
		// "type", "origin", "severity".
		order?: string

		// Filter finding types by origin. Supports multiple comma-separated, case-insensitive values.
		origins?: [...string]

		// When true, return only quarantined finding types; when false, return only
		// non-quarantined finding types. Omit to return both.
		quarantined?: bool

		// The items returned by the data source
		result?: matchN(1, [close({
			// Whether this finding type applies to every current and future integration of the vendor.
			applies_to_all_integrations?: bool

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

			// Asset class the finding type's policy evaluates.
			asset_class?: string

			// Canonical vendor enum value.
			// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE",
			// "DROPBOX", "GITHUB", "GOOGLE_CLOUD_PLATFORM", "GOOGLE_WORKSPACE", "JIRA",
			// "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
			asset_vendor?: string

			// Timestamp when the finding type was created.
			created_at?: string

			// Detailed description of the finding.
			description?: string

			// Rego expression backing this finding type. For custom finding types,
			// generated package and import declarations are omitted. System expressions
			// are returned unchanged.
			expression?: string

			// The unique identifier of the finding.
			id?: string

			// Integrations this finding type applies to when applies_to_all_integrations is false.
			integration_ids?: [...string]

			// Number of currently active finding instances across the account's
			// integrations. Zero when none have been detected.
			match_count?: number

			// The name of the finding.
			name?: string

			// Whether the finding type is system-managed or customer-created.
			// Available values: "system", "custom".
			origin?: string

			// Whether evaluation of this finding type is suspended by an operator. Present only when true.
			quarantined?: bool

			// Default severity used when no integration-specific severity override exists.
			// Available values: "Critical", "High", "Medium", "Low".
			severity?: string

			// Timestamp when the finding type was last updated.
			updated_at?: string

			// The SaaS/Cloud vendor of the platform with which the finding is associated.
			vendor?: string

			// Current version of the finding type. Incremented on each update.
			version?: number
		}), [...close({
			// Whether this finding type applies to every current and future integration of the vendor.
			applies_to_all_integrations?: bool

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

			// Asset class the finding type's policy evaluates.
			asset_class?: string

			// Canonical vendor enum value.
			// Available values: "ANTHROPIC", "AWS", "BITBUCKET", "BOX", "CONFLUENCE",
			// "DROPBOX", "GITHUB", "GOOGLE_CLOUD_PLATFORM", "GOOGLE_WORKSPACE", "JIRA",
			// "MICROSOFT", "OPENAI", "SALESFORCE", "SERVICENOW", "SLACK", "ZOOM".
			asset_vendor?: string

			// Timestamp when the finding type was created.
			created_at?: string

			// Detailed description of the finding.
			description?: string

			// Rego expression backing this finding type. For custom finding types,
			// generated package and import declarations are omitted. System expressions
			// are returned unchanged.
			expression?: string

			// The unique identifier of the finding.
			id?: string

			// Integrations this finding type applies to when applies_to_all_integrations is false.
			integration_ids?: [...string]

			// Number of currently active finding instances across the account's
			// integrations. Zero when none have been detected.
			match_count?: number

			// The name of the finding.
			name?: string

			// Whether the finding type is system-managed or customer-created.
			// Available values: "system", "custom".
			origin?: string

			// Whether evaluation of this finding type is suspended by an operator. Present only when true.
			quarantined?: bool

			// Default severity used when no integration-specific severity override exists.
			// Available values: "Critical", "High", "Medium", "Low".
			severity?: string

			// Timestamp when the finding type was last updated.
			updated_at?: string

			// The SaaS/Cloud vendor of the platform with which the finding is associated.
			vendor?: string

			// Current version of the finding type. Incremented on each update.
			version?: number
		})]])

		// Filter finding types by name or ID (case-insensitive substring match).
		search?: string

		// Filter finding types by severity. Supports multiple comma-separated, case-insensitive values.
		severities?: [...string]

		// Filter finding types by category type. Supports multiple comma-separated,
		// case-insensitive values.
		types?: [...string]

		// Filter finding types by vendor. Supports multiple comma-separated values.
		// Each value may be either the vendor enum (GOOGLE_WORKSPACE) or the friendly
		// name returned by the read routes (Google Workspace).
		vendors?: [...string]
	})
}
