package res

#helm_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/helm_release")
	close({
		atomic?:                     bool
		chart!:                      string
		cleanup_on_fail?:            bool
		create_namespace?:           bool
		dependency_update?:          bool
		description?:                string
		devel?:                      bool
		disable_crd_hooks?:          bool
		disable_openapi_validation?: bool
		disable_webhooks?:           bool
		metadata?: close({
			app_version?:    string
			chart?:          string
			first_deployed?: number
			last_deployed?:  number
			name?:           string
			namespace?:      string
			notes?:          string
			revision?:       number
			values?:         string
			version?:        string
		})
		postrender?: close({
			args?: [...string]
			binary_path!: string
		})
		set?: matchN(1, [close({
			name!:  string
			type?:  string
			value?: string
		}), [...close({
			name!:  string
			type?:  string
			value?: string
		})]])
		set_list?: matchN(1, [close({
			name!: string
			value!: [...string]
		}), [...close({
			name!: string
			value!: [...string]
		})]])
		force_update?:          bool
		id?:                    string
		keyring?:               string
		lint?:                  bool
		manifest?:              string
		max_history?:           number
		name!:                  string
		namespace?:             string
		pass_credentials?:      bool
		recreate_pods?:         bool
		render_subchart_notes?: bool
		replace?:               bool
		set_sensitive?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])
		repository?:           string
		repository_ca_file?:   string
		repository_cert_file?: string
		set_wo?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])
		repository_key_file?: string
		repository_password?: string
		repository_username?: string
		reset_values?:        bool
		reuse_values?:        bool
		set_wo_revision?:     number
		skip_crds?:           bool
		status?:              string
		timeout?:             number
		values?: [...string]
		verify?:        bool
		version?:       string
		wait?:          bool
		wait_for_jobs?: bool
	})
}
