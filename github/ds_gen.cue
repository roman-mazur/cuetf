package github

import "github.com/roman-mazur/cuetf/github/data"

#Terraform: {
	#prefix: string
	#ds: "\(#prefix)_actions_environment_secrets": data.#github_actions_environment_secrets
	#ds: "\(#prefix)_actions_environment_variables": data.#github_actions_environment_variables
	#ds: "\(#prefix)_actions_organization_oidc_subject_claim_customization_template": data.#github_actions_organization_oidc_subject_claim_customization_template
	#ds: "\(#prefix)_actions_organization_public_key": data.#github_actions_organization_public_key
	#ds: "\(#prefix)_actions_organization_registration_token": data.#github_actions_organization_registration_token
	#ds: "\(#prefix)_actions_organization_secrets": data.#github_actions_organization_secrets
	#ds: "\(#prefix)_actions_organization_variables": data.#github_actions_organization_variables
	#ds: "\(#prefix)_actions_public_key": data.#github_actions_public_key
	#ds: "\(#prefix)_actions_registration_token": data.#github_actions_registration_token
	#ds: "\(#prefix)_actions_repository_oidc_subject_claim_customization_template": data.#github_actions_repository_oidc_subject_claim_customization_template
	#ds: "\(#prefix)_actions_secrets": data.#github_actions_secrets
	#ds: "\(#prefix)_actions_variables": data.#github_actions_variables
	#ds: "\(#prefix)_app": data.#github_app
	#ds: "\(#prefix)_app_token": data.#github_app_token
	#ds: "\(#prefix)_branch": data.#github_branch
	#ds: "\(#prefix)_branch_protection_rules": data.#github_branch_protection_rules
	#ds: "\(#prefix)_codespaces_organization_public_key": data.#github_codespaces_organization_public_key
	#ds: "\(#prefix)_codespaces_organization_secrets": data.#github_codespaces_organization_secrets
	#ds: "\(#prefix)_codespaces_public_key": data.#github_codespaces_public_key
	#ds: "\(#prefix)_codespaces_secrets": data.#github_codespaces_secrets
	#ds: "\(#prefix)_codespaces_user_public_key": data.#github_codespaces_user_public_key
	#ds: "\(#prefix)_codespaces_user_secrets": data.#github_codespaces_user_secrets
	#ds: "\(#prefix)_collaborators": data.#github_collaborators
	#ds: "\(#prefix)_dependabot_organization_public_key": data.#github_dependabot_organization_public_key
	#ds: "\(#prefix)_dependabot_organization_secrets": data.#github_dependabot_organization_secrets
	#ds: "\(#prefix)_dependabot_public_key": data.#github_dependabot_public_key
	#ds: "\(#prefix)_dependabot_secrets": data.#github_dependabot_secrets
	#ds: "\(#prefix)_enterprise": data.#github_enterprise
	#ds: "\(#prefix)_external_groups": data.#github_external_groups
	#ds: "\(#prefix)_ip_ranges": data.#github_ip_ranges
	#ds: "\(#prefix)_issue_labels": data.#github_issue_labels
	#ds: "\(#prefix)_membership": data.#github_membership
	#ds: "\(#prefix)_organization_custom_properties": data.#github_organization_custom_properties
	#ds: "\(#prefix)_organization_custom_role": data.#github_organization_custom_role
	#ds: "\(#prefix)_organization_external_identities": data.#github_organization_external_identities
	#ds: "\(#prefix)_organization": data.#github_organization
	#ds: "\(#prefix)_organization_ip_allow_list": data.#github_organization_ip_allow_list
	#ds: "\(#prefix)_organization_repository_role": data.#github_organization_repository_role
	#ds: "\(#prefix)_organization_repository_roles": data.#github_organization_repository_roles
	#ds: "\(#prefix)_organization_role": data.#github_organization_role
	#ds: "\(#prefix)_organization_role_teams": data.#github_organization_role_teams
	#ds: "\(#prefix)_organization_role_users": data.#github_organization_role_users
	#ds: "\(#prefix)_organization_roles": data.#github_organization_roles
	#ds: "\(#prefix)_organization_security_managers": data.#github_organization_security_managers
	#ds: "\(#prefix)_organization_team_sync_groups": data.#github_organization_team_sync_groups
	#ds: "\(#prefix)_organization_teams": data.#github_organization_teams
	#ds: "\(#prefix)_organization_webhooks": data.#github_organization_webhooks
	#ds: "\(#prefix)_ref": data.#github_ref
	#ds: "\(#prefix)_release": data.#github_release
	#ds: "\(#prefix)_repositories": data.#github_repositories
	#ds: "\(#prefix)_repository_autolink_references": data.#github_repository_autolink_references
	#ds: "\(#prefix)_repository_branches": data.#github_repository_branches
	#ds: "\(#prefix)_repository_custom_properties": data.#github_repository_custom_properties
	#ds: "\(#prefix)_repository_deploy_keys": data.#github_repository_deploy_keys
	#ds: "\(#prefix)_repository_deployment_branch_policies": data.#github_repository_deployment_branch_policies
	#ds: "\(#prefix)_repository_environments": data.#github_repository_environments
	#ds: "\(#prefix)_repository_file": data.#github_repository_file
	#ds: "\(#prefix)_repository": data.#github_repository
	#ds: "\(#prefix)_repository_milestone": data.#github_repository_milestone
	#ds: "\(#prefix)_repository_pull_request": data.#github_repository_pull_request
	#ds: "\(#prefix)_repository_pull_requests": data.#github_repository_pull_requests
	#ds: "\(#prefix)_repository_teams": data.#github_repository_teams
	#ds: "\(#prefix)_repository_webhooks": data.#github_repository_webhooks
	#ds: "\(#prefix)_rest_api": data.#github_rest_api
	#ds: "\(#prefix)_ssh_keys": data.#github_ssh_keys
	#ds: "\(#prefix)_team": data.#github_team
	#ds: "\(#prefix)_tree": data.#github_tree
	#ds: "\(#prefix)_user_external_identity": data.#github_user_external_identity
	#ds: "\(#prefix)_user": data.#github_user
	#ds: "\(#prefix)_users": data.#github_users

}
