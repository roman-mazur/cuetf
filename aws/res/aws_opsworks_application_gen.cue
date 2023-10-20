package res

#aws_opsworks_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_opsworks_application")
	auto_bundle_on_deploy?:     string
	aws_flow_ruby_settings?:    string
	data_source_arn?:           string
	data_source_database_name?: string
	data_source_type?:          string
	description?:               string
	document_root?:             string
	domains?: [...string]
	enable_ssl?:        bool
	id?:                string
	name:               string
	rails_env?:         string
	short_name?:        string
	stack_id:           string
	type:               string
	app_source?:        #app_source | [...#app_source]
	environment?:       #environment | [...#environment]
	ssl_configuration?: #ssl_configuration | [...#ssl_configuration]

	#app_source: {
		password?: string
		revision?: string
		ssh_key?:  string
		type:      string
		url?:      string
		username?: string
	}

	#environment: {
		key:     string
		secure?: bool
		value:   string
	}

	#ssl_configuration: {
		certificate: string
		chain?:      string
		private_key: string
	}
}
