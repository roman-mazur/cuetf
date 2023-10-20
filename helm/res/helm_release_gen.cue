package res

import "list"

#helm_release: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/helm_release")
	atomic?:                     bool
	chart:                       string
	cleanup_on_fail?:            bool
	create_namespace?:           bool
	dependency_update?:          bool
	description?:                string
	devel?:                      bool
	disable_crd_hooks?:          bool
	disable_openapi_validation?: bool
	disable_webhooks?:           bool
	force_update?:               bool
	id?:                         string
	keyring?:                    string
	lint?:                       bool
	manifest?:                   string
	max_history?:                number
	metadata?: [...{
		app_version?: string
		chart?:       string
		name?:        string
		namespace?:   string
		revision?:    number
		values?:      string
		version?:     string
	}]
	name:                   string
	namespace?:             string
	pass_credentials?:      bool
	recreate_pods?:         bool
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
	skip_crds?:             bool
	status?:                string
	timeout?:               number
	values?: [...string]
	verify?:        bool
	version?:       string
	wait?:          bool
	wait_for_jobs?: bool
	postrender?:    #postrender | list.MaxItems(1) & [...#postrender]
	set?:           #set | [...#set]
	set_list?:      #set_list | [...#set_list]
	set_sensitive?: #set_sensitive | [...#set_sensitive]

	#postrender: {
		args?: [...string]
		binary_path: string
	}

	#set: {
		name:  string
		type?: string
		value: string
	}

	#set_list: {
		name: string
		value: [...string]
	}

	#set_sensitive: {
		name:  string
		type?: string
		value: string
	}
}
