package res

import "list"

#aws_codebuild_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_codebuild_project")
	arn?:                    string
	badge_enabled?:          bool
	badge_url?:              string
	build_timeout?:          number
	concurrent_build_limit?: number
	description?:            string
	encryption_key?:         string
	id?:                     string
	name:                    string
	project_visibility?:     string
	public_project_alias?:   string
	queued_timeout?:         number
	resource_access_role?:   string
	service_role:            string
	source_version?:         string
	tags?: [string]: string
	tags_all?: [string]: string
	artifacts?:                #artifacts | list.MaxItems(1) & [_, ...] & [...#artifacts]
	build_batch_config?:       #build_batch_config | list.MaxItems(1) & [...#build_batch_config]
	cache?:                    #cache | list.MaxItems(1) & [...#cache]
	environment?:              #environment | list.MaxItems(1) & [_, ...] & [...#environment]
	file_system_locations?:    #file_system_locations | [...#file_system_locations]
	logs_config?:              #logs_config | list.MaxItems(1) & [...#logs_config]
	secondary_artifacts?:      #secondary_artifacts | list.MaxItems(12) & [...#secondary_artifacts]
	secondary_source_version?: #secondary_source_version | list.MaxItems(12) & [...#secondary_source_version]
	secondary_sources?:        #secondary_sources | list.MaxItems(12) & [...#secondary_sources]
	source?:                   #source | list.MaxItems(1) & [_, ...] & [...#source]
	vpc_config?:               #vpc_config | list.MaxItems(1) & [...#vpc_config]

	#artifacts: {
		artifact_identifier?:    string
		bucket_owner_access?:    string
		encryption_disabled?:    bool
		location?:               string
		name?:                   string
		namespace_type?:         string
		override_artifact_name?: bool
		packaging?:              string
		path?:                   string
		type:                    string
	}

	#build_batch_config: {
		combine_artifacts?: bool
		service_role:       string
		timeout_in_mins?:   number
		restrictions?:      #build_batch_config.#restrictions | list.MaxItems(1) & [...#build_batch_config.#restrictions]

		#restrictions: {
			compute_types_allowed?: [...string]
			maximum_builds_allowed?: number
		}
	}

	#cache: {
		location?: string
		modes?: [...string]
		type?: string
	}

	#environment: {
		certificate?:                 string
		compute_type:                 string
		image:                        string
		image_pull_credentials_type?: string
		privileged_mode?:             bool
		type:                         string
		environment_variable?:        #environment.#environment_variable | [...#environment.#environment_variable]
		registry_credential?:         #environment.#registry_credential | list.MaxItems(1) & [...#environment.#registry_credential]

		#environment_variable: {
			name:  string
			type?: string
			value: string
		}

		#registry_credential: {
			credential:          string
			credential_provider: string
		}
	}

	#file_system_locations: {
		identifier?:    string
		location?:      string
		mount_options?: string
		mount_point?:   string
		type?:          string
	}

	#logs_config: {
		cloudwatch_logs?: #logs_config.#cloudwatch_logs | list.MaxItems(1) & [...#logs_config.#cloudwatch_logs]
		s3_logs?:         #logs_config.#s3_logs | list.MaxItems(1) & [...#logs_config.#s3_logs]

		#cloudwatch_logs: {
			group_name?:  string
			status?:      string
			stream_name?: string
		}

		#s3_logs: {
			bucket_owner_access?: string
			encryption_disabled?: bool
			location?:            string
			status?:              string
		}
	}

	#secondary_artifacts: {
		artifact_identifier:     string
		bucket_owner_access?:    string
		encryption_disabled?:    bool
		location?:               string
		name?:                   string
		namespace_type?:         string
		override_artifact_name?: bool
		packaging?:              string
		path?:                   string
		type:                    string
	}

	#secondary_source_version: {
		source_identifier: string
		source_version:    string
	}

	#secondary_sources: {
		buildspec?:             string
		git_clone_depth?:       number
		insecure_ssl?:          bool
		location?:              string
		report_build_status?:   bool
		source_identifier:      string
		type:                   string
		build_status_config?:   #secondary_sources.#build_status_config | list.MaxItems(1) & [...#secondary_sources.#build_status_config]
		git_submodules_config?: #secondary_sources.#git_submodules_config | list.MaxItems(1) & [...#secondary_sources.#git_submodules_config]

		#build_status_config: {
			context?:    string
			target_url?: string
		}

		#git_submodules_config: fetch_submodules: bool
	}

	#source: {
		buildspec?:             string
		git_clone_depth?:       number
		insecure_ssl?:          bool
		location?:              string
		report_build_status?:   bool
		type:                   string
		build_status_config?:   #source.#build_status_config | list.MaxItems(1) & [...#source.#build_status_config]
		git_submodules_config?: #source.#git_submodules_config | list.MaxItems(1) & [...#source.#git_submodules_config]

		#build_status_config: {
			context?:    string
			target_url?: string
		}

		#git_submodules_config: fetch_submodules: bool
	}

	#vpc_config: {
		security_group_ids: [...string]
		subnets: [...string]
		vpc_id: string
	}
}
