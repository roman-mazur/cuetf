package data

import "list"

#helm_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/helm_template")
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
	id?:                         string
	include_crds?:               bool
	is_upgrade?:                 bool
	keyring?:                    string
	kube_version?:               string
	manifest?:                   string
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
	postrender?: #postrender | list.MaxItems(1) & [...#postrender]
	set?: #set | [...#set]
	set_list?: #set_list | [...#set_list]
	set_sensitive?: #set_sensitive | [...#set_sensitive]
	set_string?: #set_string | [...#set_string]

	#postrender: binary_path!: string

	#set: {
		name!:  string
		type?:  string
		value!: string
	}

	#set_list: {
		name!: string
		value!: [...string]
	}

	#set_sensitive: {
		name!:  string
		type?:  string
		value!: string
	}

	#set_string: {
		name!:  string
		value!: string
	}
}
