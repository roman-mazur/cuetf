package data

#helm_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/helm_template")
	close({
		api_versions?: [...string]
		atomic?: bool
		chart!:  string
		crds?: [...string]
		create_namespace?:           bool
		dependency_update?:          bool
		description?:                string
		devel?:                      bool
		disable_openapi_validation?: bool
		disable_webhooks?:           bool
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
			name?: string
			value!: [...string]
		}), [...close({
			name?: string
			value!: [...string]
		})]])
		set_sensitive?: matchN(1, [close({
			name!:  string
			type?:  string
			value!: string
		}), [...close({
			name!:  string
			type?:  string
			value!: string
		})]])
		id?:           string
		include_crds?: bool
		is_upgrade?:   bool
		keyring?:      string
		kube_version?: string
		manifest?:     string
		manifests?: [string]: string
		name!:                  string
		namespace?:             string
		notes?:                 string
		pass_credentials?:      bool
		render_subchart_notes?: bool
		replace?:               bool
		repository?:            string
		repository_ca_file?:    string
		repository_cert_file?:  string
		repository_key_file?:   string
		repository_password?:   string
		repository_username?:   string
		reset_values?:          bool
		reuse_values?:          bool
		show_only?: [...string]
		skip_crds?:  bool
		skip_tests?: bool
		timeout?:    number
		validate?:   bool
		values?: [...string]
		verify?:  bool
		version?: string
		wait?:    bool
	})
}
