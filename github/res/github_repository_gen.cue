package res

import "list"

#github_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_repository")
	close({
		// Set to 'true' to allow auto-merging pull requests on the
		// repository.
		allow_auto_merge?: bool

		// Set to 'true' to allow private forking on the repository; this
		// is only relevant if the repository is owned by an organization
		// and is private or internal.
		allow_forking?: bool

		// Set to 'false' to disable merge commits on the repository.
		allow_merge_commit?: bool

		// Set to 'false' to disable rebase merges on the repository.
		allow_rebase_merge?: bool

		// Set to 'false' to disable squash merges on the repository.
		allow_squash_merge?: bool

		// Set to 'true' to always suggest updating pull request branches.
		allow_update_branch?: bool

		// Set to 'true' to archive the repository instead of deleting on
		// destroy.
		archive_on_destroy?: bool

		// Specifies if the repository should be archived. Defaults to
		// 'false'. NOTE Currently, the API does not support unarchiving.
		archived?: bool

		// Set to 'true' to produce an initial commit in the repository.
		auto_init?: bool

		// Automatically delete head branch after a pull request is
		// merged. Defaults to 'false'.
		delete_branch_on_merge?: bool

		// A description of the repository.
		description?: string
		etag?:        string

		// Set to 'true' to fork an existing repository.
		fork?: string

		// A string of the form 'orgname/reponame'.
		full_name?: string

		// URL that can be provided to 'git clone' to clone the repository
		// anonymously via the git protocol.
		git_clone_url?: string

		// Use the name of the template without the extension. For
		// example, 'Haskell'.
		gitignore_template?: string

		// Set to 'true' to enable GitHub Discussions on the repository.
		// Defaults to 'false'.
		has_discussions?: bool

		// Set to 'true' to enable the GitHub Issues features on the
		// repository
		has_issues?: bool

		// Set to 'true' to enable the GitHub Projects features on the
		// repository. Per the GitHub documentation when in an
		// organization that has disabled repository projects it will
		// default to 'false' and will otherwise default to 'true'. If
		// you specify 'true' when it has been disabled it will return an
		// error.
		has_projects?: bool

		// Set to 'true' to enable the GitHub Wiki features on the
		// repository.
		has_wiki?: bool

		// URL of a page describing the project.
		homepage_url?: string

		// URL to the repository on the web.
		html_url?: string

		// URL that can be provided to 'git clone' to clone the repository
		// via HTTPS.
		http_clone_url?: string
		id?:             string
		pages?: matchN(1, [#pages, list.MaxItems(1) & [...#pages]])
		security_and_analysis?: matchN(1, [#security_and_analysis, list.MaxItems(1) & [...#security_and_analysis]])

		// Set to true to not call the vulnerability alerts endpoint so
		// the resource can also be used without admin permissions during
		// read.
		ignore_vulnerability_alerts_during_read?: bool

		// Set to 'true' to tell GitHub that this is a template
		// repository.
		is_template?: bool

		// Use the name of the template without the extension. For
		// example, 'mit' or 'mpl-2.0'.
		license_template?: string

		// Can be 'PR_BODY', 'PR_TITLE', or 'BLANK' for a default merge
		// commit message.
		merge_commit_message?: string

		// Can be 'PR_TITLE' or 'MERGE_MESSAGE' for a default merge commit
		// title.
		merge_commit_title?: string

		// The name of the repository.
		name!: string

		// GraphQL global node id for use with v4 API.
		node_id?: string

		// GitHub ID for the repository.
		repo_id?:          number
		primary_language?: string

		// The owner of the source repository to fork from.
		source_owner?: string
		template?: matchN(1, [#template, list.MaxItems(1) & [...#template]])

		// The name of the source repository to fork from.
		source_repo?: string

		// Can be 'PR_BODY', 'COMMIT_MESSAGES', or 'BLANK' for a default
		// squash merge commit message.
		squash_merge_commit_message?: string

		// Can be 'PR_TITLE' or 'COMMIT_OR_PR_TITLE' for a default squash
		// merge commit title.
		squash_merge_commit_title?: string

		// URL that can be provided to 'git clone' to clone the repository
		// via SSH.
		ssh_clone_url?: string

		// URL that can be provided to 'svn checkout' to check out the
		// repository via GitHub's Subversion protocol emulation.
		svn_url?: string

		// The list of topics of the repository.
		topics?: [...string]

		// Can be 'public' or 'private'. If your organization is
		// associated with an enterprise account using GitHub Enterprise
		// Cloud or GitHub Enterprise Server 2.20+, visibility can also
		// be 'internal'.
		visibility?: string

		// Set to 'true' to enable security alerts for vulnerable
		// dependencies. Enabling requires alerts to be enabled on the
		// owner level. (Note for importing: GitHub enables the alerts on
		// all repos by default). Note that vulnerability alerts have not
		// been successfully tested on any GitHub Enterprise instance and
		// may be unavailable in those settings.
		vulnerability_alerts?: bool

		// Require contributors to sign off on web-based commits. Defaults
		// to 'false'.
		web_commit_signoff_required?: bool
	})

	#pages: close({
		// The type the page should be sourced.
		build_type?: string

		// The custom domain for the repository. This can only be set
		// after the repository has been created.
		cname?: string

		// Whether the rendered GitHub Pages site has a custom 404 page
		custom_404?: bool

		// URL to the repository on the web.
		html_url?: string

		// The GitHub Pages site's build status e.g. building or built.
		status?: string
		source?: matchN(1, [_#defs."/$defs/pages/$defs/source", list.MaxItems(1) & [..._#defs."/$defs/pages/$defs/source"]])
		url?: string
	})

	#security_and_analysis: close({
		advanced_security?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/advanced_security", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/advanced_security"]])
		code_security?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/code_security", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/code_security"]])
		secret_scanning?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning"]])
		secret_scanning_ai_detection?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning_ai_detection", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning_ai_detection"]])
		secret_scanning_non_provider_patterns?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning_non_provider_patterns", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning_non_provider_patterns"]])
		secret_scanning_push_protection?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning_push_protection", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning_push_protection"]])
	})

	#template: close({
		// Whether the new repository should include all the branches from
		// the template repository (defaults to 'false', which includes
		// only the default branch from the template).
		include_all_branches?: bool

		// The GitHub organization or user the template repository is
		// owned by.
		owner!: string

		// The name of the template repository.
		repository!: string
	})

	_#defs: "/$defs/pages/$defs/source": close({
		// The repository branch used to publish the site's source files.
		// (i.e. 'main' or 'gh-pages')
		branch!: string

		// The repository directory from which the site publishes
		// (Default: '/')
		path?: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/advanced_security": close({
		// Set to 'enabled' to enable advanced security features on the
		// repository. Can be 'enabled' or 'disabled', This value being
		// present when split licensing is enabled will error out.
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/code_security": close({
		// Set to 'enabled' to enable code security on the repository. Can
		// be 'enabled' or 'disabled'. If set to 'enabled', the
		// repository's visibility must be 'public',
		// 'security_and_analysis[0].advanced_security[0].status' must
		// also be set to 'enabled', or your Organization must have split
		// licensing for Advanced security.
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning": close({
		// Set to 'enabled' to enable secret scanning on the repository.
		// Can be 'enabled' or 'disabled'. If set to 'enabled', the
		// repository's visibility must be 'public',
		// 'security_and_analysis[0].advanced_security[0].status' must
		// also be set to 'enabled', or your Organization must have split
		// licensing for Advanced security.
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning_ai_detection": close({
		// Set to 'enabled' to enable secret scanning AI detection on the
		// repository. Can be 'enabled' or 'disabled'. If set to
		// 'enabled', the repository's visibility must be 'public',
		// 'security_and_analysis[0].advanced_security[0].status' must
		// also be set to 'enabled', or your Organization must have split
		// licensing for Advanced security.
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning_non_provider_patterns": close({
		// Set to 'enabled' to enable secret scanning non-provider
		// patterns on the repository. Can be 'enabled' or 'disabled'. If
		// set to 'enabled', the repository's visibility must be
		// 'public',
		// 'security_and_analysis[0].advanced_security[0].status' must
		// also be set to 'enabled', or your Organization must have split
		// licensing for Advanced security.
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning_push_protection": close({
		// Set to 'enabled' to enable secret scanning push protection on
		// the repository. Can be 'enabled' or 'disabled'. If set to
		// 'enabled', the repository's visibility must be 'public',
		// 'security_and_analysis[0].advanced_security[0].status' must
		// also be set to 'enabled', or your Organization must have split
		// licensing for Advanced security.
		status!: string
	})
}
