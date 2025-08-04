package res

import "list"

#github_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github_repository")
	close({
		allow_auto_merge?:       bool
		allow_merge_commit?:     bool
		allow_rebase_merge?:     bool
		allow_squash_merge?:     bool
		allow_update_branch?:    bool
		archive_on_destroy?:     bool
		archived?:               bool
		auto_init?:              bool
		delete_branch_on_merge?: bool
		description?:            string
		etag?:                   string
		full_name?:              string
		git_clone_url?:          string
		gitignore_template?:     string
		has_discussions?:        bool
		has_downloads?:          bool
		has_issues?:             bool
		has_projects?:           bool
		has_wiki?:               bool
		homepage_url?:           string
		html_url?:               string
		pages?: matchN(1, [#pages, list.MaxItems(1) & [...#pages]])
		security_and_analysis?: matchN(1, [#security_and_analysis, list.MaxItems(1) & [...#security_and_analysis]])
		template?: matchN(1, [#template, list.MaxItems(1) & [...#template]])
		http_clone_url?:                          string
		id?:                                      string
		ignore_vulnerability_alerts_during_read?: bool
		is_template?:                             bool
		license_template?:                        string
		merge_commit_message?:                    string
		merge_commit_title?:                      string
		name!:                                    string
		node_id?:                                 string
		primary_language?:                        string
		repo_id?:                                 number
		squash_merge_commit_message?:             string
		squash_merge_commit_title?:               string
		ssh_clone_url?:                           string
		svn_url?:                                 string
		topics?: [...string]
		visibility?:                  string
		vulnerability_alerts?:        bool
		web_commit_signoff_required?: bool
	})

	#pages: close({
		source?: matchN(1, [_#defs."/$defs/pages/$defs/source", list.MaxItems(1) & [..._#defs."/$defs/pages/$defs/source"]])
		build_type?: string
		cname?:      string
		custom_404?: bool
		html_url?:   string
		status?:     string
		url?:        string
	})

	#security_and_analysis: close({
		advanced_security?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/advanced_security", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/advanced_security"]])
		secret_scanning?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning"]])
		secret_scanning_push_protection?: matchN(1, [_#defs."/$defs/security_and_analysis/$defs/secret_scanning_push_protection", list.MaxItems(1) & [..._#defs."/$defs/security_and_analysis/$defs/secret_scanning_push_protection"]])
	})

	#template: close({
		include_all_branches?: bool
		owner!:                string
		repository!:           string
	})

	_#defs: "/$defs/pages/$defs/source": close({
		branch!: string
		path?:   string
	})

	_#defs: "/$defs/security_and_analysis/$defs/advanced_security": close({
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning": close({
		status!: string
	})

	_#defs: "/$defs/security_and_analysis/$defs/secret_scanning_push_protection": close({
		status!: string
	})
}
