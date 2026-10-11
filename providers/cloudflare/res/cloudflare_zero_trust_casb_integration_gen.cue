package res

cloudflare_zero_trust_casb_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_casb_integration")
	close({
		// Cloudflare account identifier.
		account_id!: string

		// Anthropic integration configuration.
		anthropic?: close({
			// Authenticate with an Anthropic Admin API key.
			anthropic_admin_api_key?: close({
				// Anthropic Admin API key. This value is write-only and is never persisted to Terraform state.
				api_key!: string

				// Organization ID. Auto-extracted from the key if not provided.
				tenant_id?: string
			})

			// Authenticate with an Anthropic Compliance API key.
			anthropic_compliance_api_key?: close({
				// Anthropic Compliance API key. This value is write-only and is never persisted to Terraform state.
				compliance_api_key!: string

				// Organization ID. Auto-extracted from the key if not provided.
				tenant_id?: string
			})

			// Authenticate with an Anthropic Workspace API key.
			anthropic_workspace_api_key?: close({
				// Anthropic Workspace API key. This value is write-only and is never persisted to Terraform state.
				api_key!: string

				// Workspace ID, found in the Anthropic Console URL after /workspaces/.
				tenant_id!: string
			})
		})

		// DLP profile IDs to associate with the integration.
		dlp_profiles?: [...string]

		// AWS integration configuration.
		aws?: close({
			// Authenticate by delegating to a cross-account IAM role.
			aws_iam_role?: close({
				// External ID required when assuming the IAM role.
				external_id!: string

				// ARN of the cross-account IAM role Cloudflare will assume.
				role_arn!: string
			})
		})

		// Integration ID.
		id?: string

		// Box integration configuration.
		box?: close({
			// Authenticate with Box server authentication. Before creating the integration,
			// add the Cloudflare CASB application in Box Admin Console > Integrations >
			// Platform Apps Manager > Server Authentication Apps using client ID
			// `puaghckpy0578r8p6f3g0rf860unup4r`.
			box_server_authentication?: close({
				// Box Enterprise ID from Admin Console > Accounts & Billing.
				enterprise_id!: string
			})
		})

		// Name of the integration.
		name!: string

		// Google Cloud Platform integration configuration.
		google_cloud_platform?: close({
			// Authenticate with a service account key.
			google_cloud_platform_service_account?: close({
				// Contents of a Google service account JSON key file. This value is write-only
				// and is never persisted to Terraform state.
				service_account_key_json!: string
			})
		})

		// Whether the integration is paused.
		paused!: bool

		// Google Workspace integration configuration.
		google_workspace?: close({
			// Authenticate with a service account granted domain-wide delegation.
			google_domain_wide_delegation_service_account?: close({
				// A Google Workspace super administrator email address.
				administrator_email!: string

				// Contents of a Google service account JSON key file. This value is write-only
				// and is never persisted to Terraform state.
				service_account_key_json!: string
			})
		})

		// Permission scopes granted to the integration.
		permissions?: [...string]

		// OpenAI integration configuration.
		openai?: close({
			// Authenticate with an OpenAI Compliance API key. Requires an Enterprise plan.
			chatgpt_compliance_api_key?: close({
				// OpenAI Admin API key with api.management.read access. This value is
				// write-only and is never persisted to Terraform state.
				admin_api_key!: string

				// OpenAI Compliance API key for audit logs. This value is write-only and is
				// never persisted to Terraform state.
				compliance_api_key!: string

				// OpenAI Organization ID.
				organization_id!: string

				// OpenAI Project API key, used for DLP. This value is write-only and is never
				// persisted to Terraform state.
				project_api_key?: string

				// OpenAI Project ID, used for DLP.
				project_id?: string

				// OpenAI Workspace ID for compliance data.
				workspace_id!: string
			})

			// Authenticate with an OpenAI Admin API key.
			chatgpt_standard_api_key?: close({
				// OpenAI Admin API key with api.management.read access. This value is
				// write-only and is never persisted to Terraform state.
				admin_api_key!: string

				// OpenAI Organization ID.
				organization_id!: string

				// OpenAI Project API key, used for DLP. This value is write-only and is never
				// persisted to Terraform state.
				project_api_key?: string

				// OpenAI Project ID, used for DLP.
				project_id?: string
			})
		})

		// Secure digest of the confidential arguments. Managed by the provider.
		secrets_digest?: string

		// Use cases to enroll the integration in.
		use_cases?: [...string]
	})
}
