package data

#github_repository: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/github_repository")
	close({
		allow_auto_merge?:       bool
		allow_forking?:          bool
		allow_merge_commit?:     bool
		allow_rebase_merge?:     bool
		allow_squash_merge?:     bool
		allow_update_branch?:    bool
		archived?:               bool
		default_branch?:         string
		delete_branch_on_merge?: bool
		description?:            string
		fork?:                   bool
		full_name?:              string
		git_clone_url?:          string
		has_discussions?:        bool
		has_issues?:             bool
		has_projects?:           bool
		has_wiki?:               bool
		homepage_url?:           string
		html_url?:               string
		http_clone_url?:         string
		id?:                     string
		is_template?:            bool
		merge_commit_message?:   string
		merge_commit_title?:     string
		name?:                   string
		node_id?:                string
		pages?: [...close({
			build_type?: string
			cname?:      string
			custom_404?: bool
			html_url?:   string
			source?: [...close({
				branch?: string
				path?:   string
			})]
			status?: string
			url?:    string
		})]
		primary_language?: string
		private?:          bool
		repo_id?:          number
		repository_license?: [...close({
			content?:      string
			download_url?: string
			encoding?:     string
			git_url?:      string
			html_url?:     string
			license?: [...close({
				body?: string
				conditions?: [...string]
				description?:    string
				featured?:       bool
				html_url?:       string
				implementation?: string
				key?:            string
				limitations?: [...string]
				name?: string
				permissions?: [...string]
				spdx_id?: string
				url?:     string
			})]
			name?: string
			path?: string
			sha?:  string
			size?: number
			type?: string
			url?:  string
		})]
		squash_merge_commit_message?: string
		squash_merge_commit_title?:   string
		ssh_clone_url?:               string
		svn_url?:                     string
		template?: [...close({
			owner?:      string
			repository?: string
		})]
		topics?: [...string]
		visibility?: string
	})
}
