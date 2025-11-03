package github

import "github.com/roman-mazur/cuetf/github/res"

#Terraform: {
	#prefix: string
	#res: "\(#prefix)_actions_environment_secret": res.#github_actions_environment_secret
	#res: "\(#prefix)_actions_environment_variable": res.#github_actions_environment_variable
	#res: "\(#prefix)_actions_organization_oidc_subject_claim_customization_template": res.#github_actions_organization_oidc_subject_claim_customization_template
	#res: "\(#prefix)_actions_organization_permissions": res.#github_actions_organization_permissions
	#res: "\(#prefix)_actions_organization_secret": res.#github_actions_organization_secret
	#res: "\(#prefix)_actions_organization_secret_repositories": res.#github_actions_organization_secret_repositories
	#res: "\(#prefix)_actions_organization_secret_repository": res.#github_actions_organization_secret_repository
	#res: "\(#prefix)_actions_organization_variable": res.#github_actions_organization_variable
	#res: "\(#prefix)_actions_repository_access_level": res.#github_actions_repository_access_level
	#res: "\(#prefix)_actions_repository_oidc_subject_claim_customization_template": res.#github_actions_repository_oidc_subject_claim_customization_template
	#res: "\(#prefix)_actions_repository_permissions": res.#github_actions_repository_permissions
	#res: "\(#prefix)_actions_runner_group": res.#github_actions_runner_group
	#res: "\(#prefix)_actions_secret": res.#github_actions_secret
	#res: "\(#prefix)_actions_variable": res.#github_actions_variable
	#res: "\(#prefix)_app_installation_repositories": res.#github_app_installation_repositories
	#res: "\(#prefix)_app_installation_repository": res.#github_app_installation_repository
	#res: "\(#prefix)_branch_default": res.#github_branch_default
	#res: "\(#prefix)_branch": res.#github_branch
	#res: "\(#prefix)_branch_protection": res.#github_branch_protection
	#res: "\(#prefix)_branch_protection_v3": res.#github_branch_protection_v3
	#res: "\(#prefix)_codespaces_organization_secret": res.#github_codespaces_organization_secret
	#res: "\(#prefix)_codespaces_organization_secret_repositories": res.#github_codespaces_organization_secret_repositories
	#res: "\(#prefix)_codespaces_secret": res.#github_codespaces_secret
	#res: "\(#prefix)_codespaces_user_secret": res.#github_codespaces_user_secret
	#res: "\(#prefix)_dependabot_organization_secret": res.#github_dependabot_organization_secret
	#res: "\(#prefix)_dependabot_organization_secret_repositories": res.#github_dependabot_organization_secret_repositories
	#res: "\(#prefix)_dependabot_secret": res.#github_dependabot_secret
	#res: "\(#prefix)_emu_group_mapping": res.#github_emu_group_mapping
	#res: "\(#prefix)_enterprise_actions_permissions": res.#github_enterprise_actions_permissions
	#res: "\(#prefix)_enterprise_actions_runner_group": res.#github_enterprise_actions_runner_group
	#res: "\(#prefix)_enterprise_organization": res.#github_enterprise_organization
	#res: "\(#prefix)_issue": res.#github_issue
	#res: "\(#prefix)_issue_label": res.#github_issue_label
	#res: "\(#prefix)_issue_labels": res.#github_issue_labels
	#res: "\(#prefix)_membership": res.#github_membership
	#res: "\(#prefix)_organization_block": res.#github_organization_block
	#res: "\(#prefix)_organization_custom_properties": res.#github_organization_custom_properties
	#res: "\(#prefix)_organization_custom_role": res.#github_organization_custom_role
	#res: "\(#prefix)_organization_project": res.#github_organization_project
	#res: "\(#prefix)_organization_repository_role": res.#github_organization_repository_role
	#res: "\(#prefix)_organization_role": res.#github_organization_role
	#res: "\(#prefix)_organization_role_team_assignment": res.#github_organization_role_team_assignment
	#res: "\(#prefix)_organization_role_team": res.#github_organization_role_team
	#res: "\(#prefix)_organization_role_user": res.#github_organization_role_user
	#res: "\(#prefix)_organization_ruleset": res.#github_organization_ruleset
	#res: "\(#prefix)_organization_security_manager": res.#github_organization_security_manager
	#res: "\(#prefix)_organization_settings": res.#github_organization_settings
	#res: "\(#prefix)_organization_webhook": res.#github_organization_webhook
	#res: "\(#prefix)_project_card": res.#github_project_card
	#res: "\(#prefix)_project_column": res.#github_project_column
	#res: "\(#prefix)_release": res.#github_release
	#res: "\(#prefix)_repository_autolink_reference": res.#github_repository_autolink_reference
	#res: "\(#prefix)_repository_collaborator": res.#github_repository_collaborator
	#res: "\(#prefix)_repository_collaborators": res.#github_repository_collaborators
	#res: "\(#prefix)_repository_custom_property": res.#github_repository_custom_property
	#res: "\(#prefix)_repository_dependabot_security_updates": res.#github_repository_dependabot_security_updates
	#res: "\(#prefix)_repository_deploy_key": res.#github_repository_deploy_key
	#res: "\(#prefix)_repository_deployment_branch_policy": res.#github_repository_deployment_branch_policy
	#res: "\(#prefix)_repository_environment_deployment_policy": res.#github_repository_environment_deployment_policy
	#res: "\(#prefix)_repository_environment": res.#github_repository_environment
	#res: "\(#prefix)_repository_file": res.#github_repository_file
	#res: "\(#prefix)_repository": res.#github_repository
	#res: "\(#prefix)_repository_milestone": res.#github_repository_milestone
	#res: "\(#prefix)_repository_project": res.#github_repository_project
	#res: "\(#prefix)_repository_pull_request": res.#github_repository_pull_request
	#res: "\(#prefix)_repository_ruleset": res.#github_repository_ruleset
	#res: "\(#prefix)_repository_tag_protection": res.#github_repository_tag_protection
	#res: "\(#prefix)_repository_topics": res.#github_repository_topics
	#res: "\(#prefix)_repository_webhook": res.#github_repository_webhook
	#res: "\(#prefix)_team": res.#github_team
	#res: "\(#prefix)_team_members": res.#github_team_members
	#res: "\(#prefix)_team_membership": res.#github_team_membership
	#res: "\(#prefix)_team_repository": res.#github_team_repository
	#res: "\(#prefix)_team_settings": res.#github_team_settings
	#res: "\(#prefix)_team_sync_group_mapping": res.#github_team_sync_group_mapping
	#res: "\(#prefix)_user_gpg_key": res.#github_user_gpg_key
	#res: "\(#prefix)_user_invitation_accepter": res.#github_user_invitation_accepter
	#res: "\(#prefix)_user_ssh_key": res.#github_user_ssh_key

}
