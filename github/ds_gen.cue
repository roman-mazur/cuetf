package github

import "github.com/roman-mazur/cuetf/github/data"

#Terraform: {
	#githubPrefix: string
	_#ds: "\(#githubPrefix)_actions_environment_public_key": data.#github_actions_environment_public_key
	_#ds: "\(#githubPrefix)_actions_environment_secrets": data.#github_actions_environment_secrets
	_#ds: "\(#githubPrefix)_actions_environment_variables": data.#github_actions_environment_variables
	_#ds: "\(#githubPrefix)_actions_organization_oidc_subject_claim_customization_template": data.#github_actions_organization_oidc_subject_claim_customization_template
	_#ds: "\(#githubPrefix)_actions_organization_public_key": data.#github_actions_organization_public_key
	_#ds: "\(#githubPrefix)_actions_organization_registration_token": data.#github_actions_organization_registration_token
	_#ds: "\(#githubPrefix)_actions_organization_secrets": data.#github_actions_organization_secrets
	_#ds: "\(#githubPrefix)_actions_organization_variables": data.#github_actions_organization_variables
	_#ds: "\(#githubPrefix)_actions_public_key": data.#github_actions_public_key
	_#ds: "\(#githubPrefix)_actions_registration_token": data.#github_actions_registration_token
	_#ds: "\(#githubPrefix)_actions_repository_oidc_subject_claim_customization_template": data.#github_actions_repository_oidc_subject_claim_customization_template
	_#ds: "\(#githubPrefix)_actions_secrets": data.#github_actions_secrets
	_#ds: "\(#githubPrefix)_actions_variables": data.#github_actions_variables
	_#ds: "\(#githubPrefix)_app": data.#github_app
	_#ds: "\(#githubPrefix)_app_token": data.#github_app_token
	_#ds: "\(#githubPrefix)_branch": data.#github_branch
	_#ds: "\(#githubPrefix)_branch_protection_rules": data.#github_branch_protection_rules
	_#ds: "\(#githubPrefix)_codespaces_organization_public_key": data.#github_codespaces_organization_public_key
	_#ds: "\(#githubPrefix)_codespaces_organization_secrets": data.#github_codespaces_organization_secrets
	_#ds: "\(#githubPrefix)_codespaces_public_key": data.#github_codespaces_public_key
	_#ds: "\(#githubPrefix)_codespaces_secrets": data.#github_codespaces_secrets
	_#ds: "\(#githubPrefix)_codespaces_user_public_key": data.#github_codespaces_user_public_key
	_#ds: "\(#githubPrefix)_codespaces_user_secrets": data.#github_codespaces_user_secrets
	_#ds: "\(#githubPrefix)_collaborators": data.#github_collaborators
	_#ds: "\(#githubPrefix)_dependabot_organization_public_key": data.#github_dependabot_organization_public_key
	_#ds: "\(#githubPrefix)_dependabot_organization_secrets": data.#github_dependabot_organization_secrets
	_#ds: "\(#githubPrefix)_dependabot_public_key": data.#github_dependabot_public_key
	_#ds: "\(#githubPrefix)_dependabot_secrets": data.#github_dependabot_secrets
	_#ds: "\(#githubPrefix)_enterprise": data.#github_enterprise
	_#ds: "\(#githubPrefix)_external_groups": data.#github_external_groups
	_#ds: "\(#githubPrefix)_ip_ranges": data.#github_ip_ranges
	_#ds: "\(#githubPrefix)_issue_labels": data.#github_issue_labels
	_#ds: "\(#githubPrefix)_membership": data.#github_membership
	_#ds: "\(#githubPrefix)_organization_custom_properties": data.#github_organization_custom_properties
	_#ds: "\(#githubPrefix)_organization_custom_role": data.#github_organization_custom_role
	_#ds: "\(#githubPrefix)_organization_external_identities": data.#github_organization_external_identities
	_#ds: "\(#githubPrefix)_organization": data.#github_organization
	_#ds: "\(#githubPrefix)_organization_ip_allow_list": data.#github_organization_ip_allow_list
	_#ds: "\(#githubPrefix)_organization_repository_role": data.#github_organization_repository_role
	_#ds: "\(#githubPrefix)_organization_repository_roles": data.#github_organization_repository_roles
	_#ds: "\(#githubPrefix)_organization_role": data.#github_organization_role
	_#ds: "\(#githubPrefix)_organization_role_teams": data.#github_organization_role_teams
	_#ds: "\(#githubPrefix)_organization_role_users": data.#github_organization_role_users
	_#ds: "\(#githubPrefix)_organization_roles": data.#github_organization_roles
	_#ds: "\(#githubPrefix)_organization_security_managers": data.#github_organization_security_managers
	_#ds: "\(#githubPrefix)_organization_team_sync_groups": data.#github_organization_team_sync_groups
	_#ds: "\(#githubPrefix)_organization_teams": data.#github_organization_teams
	_#ds: "\(#githubPrefix)_organization_webhooks": data.#github_organization_webhooks
	_#ds: "\(#githubPrefix)_ref": data.#github_ref
	_#ds: "\(#githubPrefix)_release": data.#github_release
	_#ds: "\(#githubPrefix)_repositories": data.#github_repositories
	_#ds: "\(#githubPrefix)_repository_autolink_references": data.#github_repository_autolink_references
	_#ds: "\(#githubPrefix)_repository_branches": data.#github_repository_branches
	_#ds: "\(#githubPrefix)_repository_custom_properties": data.#github_repository_custom_properties
	_#ds: "\(#githubPrefix)_repository_deploy_keys": data.#github_repository_deploy_keys
	_#ds: "\(#githubPrefix)_repository_deployment_branch_policies": data.#github_repository_deployment_branch_policies
	_#ds: "\(#githubPrefix)_repository_environment_deployment_policies": data.#github_repository_environment_deployment_policies
	_#ds: "\(#githubPrefix)_repository_environments": data.#github_repository_environments
	_#ds: "\(#githubPrefix)_repository_file": data.#github_repository_file
	_#ds: "\(#githubPrefix)_repository": data.#github_repository
	_#ds: "\(#githubPrefix)_repository_milestone": data.#github_repository_milestone
	_#ds: "\(#githubPrefix)_repository_pull_request": data.#github_repository_pull_request
	_#ds: "\(#githubPrefix)_repository_pull_requests": data.#github_repository_pull_requests
	_#ds: "\(#githubPrefix)_repository_teams": data.#github_repository_teams
	_#ds: "\(#githubPrefix)_repository_webhooks": data.#github_repository_webhooks
	_#ds: "\(#githubPrefix)_rest_api": data.#github_rest_api
	_#ds: "\(#githubPrefix)_ssh_keys": data.#github_ssh_keys
	_#ds: "\(#githubPrefix)_team": data.#github_team
	_#ds: "\(#githubPrefix)_tree": data.#github_tree
	_#ds: "\(#githubPrefix)_user_external_identity": data.#github_user_external_identity
	_#ds: "\(#githubPrefix)_user": data.#github_user
	_#ds: "\(#githubPrefix)_users": data.#github_users

}
