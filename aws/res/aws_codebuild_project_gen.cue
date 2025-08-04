package res

import "list"

#aws_codebuild_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_project")
	close({
		arn?:                    string
		badge_enabled?:          bool
		badge_url?:              string
		build_timeout?:          number
		concurrent_build_limit?: number
		description?:            string
		encryption_key?:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		artifacts?: matchN(1, [#artifacts, list.MaxItems(1) & [_, ...] & [...#artifacts]])
		id?:                   string
		name!:                 string
		project_visibility?:   string
		public_project_alias?: string
		queued_timeout?:       number
		build_batch_config?: matchN(1, [#build_batch_config, list.MaxItems(1) & [...#build_batch_config]])
		cache?: matchN(1, [#cache, list.MaxItems(1) & [...#cache]])
		resource_access_role?: string
		service_role!:         string
		source_version?:       string
		environment?: matchN(1, [#environment, list.MaxItems(1) & [_, ...] & [...#environment]])
		file_system_locations?: matchN(1, [#file_system_locations, [...#file_system_locations]])
		logs_config?: matchN(1, [#logs_config, list.MaxItems(1) & [...#logs_config]])
		secondary_artifacts?: matchN(1, [#secondary_artifacts, list.MaxItems(12) & [...#secondary_artifacts]])
		secondary_source_version?: matchN(1, [#secondary_source_version, list.MaxItems(12) & [...#secondary_source_version]])
		tags?: [string]:     string
		tags_all?: [string]: string
		secondary_sources?: matchN(1, [#secondary_sources, list.MaxItems(12) & [...#secondary_sources]])
		source?: matchN(1, [#source, list.MaxItems(1) & [_, ...] & [...#source]])
		vpc_config?: matchN(1, [#vpc_config, list.MaxItems(1) & [...#vpc_config]])
	})

	#artifacts: close({
		artifact_identifier?:    string
		bucket_owner_access?:    string
		encryption_disabled?:    bool
		location?:               string
		name?:                   string
		namespace_type?:         string
		override_artifact_name?: bool
		packaging?:              string
		path?:                   string
		type!:                   string
	})

	#build_batch_config: close({
		restrictions?: matchN(1, [_#defs."/$defs/build_batch_config/$defs/restrictions", list.MaxItems(1) & [..._#defs."/$defs/build_batch_config/$defs/restrictions"]])
		combine_artifacts?: bool
		service_role!:      string
		timeout_in_mins?:   number
	})

	#cache: close({
		location?: string
		modes?: [...string]
		type?: string
	})

	#environment: close({
		docker_server?: matchN(1, [_#defs."/$defs/environment/$defs/docker_server", list.MaxItems(1) & [..._#defs."/$defs/environment/$defs/docker_server"]])
		certificate?:                 string
		compute_type!:                string
		image!:                       string
		image_pull_credentials_type?: string
		privileged_mode?:             bool
		type!:                        string
		environment_variable?: matchN(1, [_#defs."/$defs/environment/$defs/environment_variable", [..._#defs."/$defs/environment/$defs/environment_variable"]])
		fleet?: matchN(1, [_#defs."/$defs/environment/$defs/fleet", list.MaxItems(1) & [..._#defs."/$defs/environment/$defs/fleet"]])
		registry_credential?: matchN(1, [_#defs."/$defs/environment/$defs/registry_credential", list.MaxItems(1) & [..._#defs."/$defs/environment/$defs/registry_credential"]])
	})

	#file_system_locations: close({
		identifier?:    string
		location?:      string
		mount_options?: string
		mount_point?:   string
		type?:          string
	})

	#logs_config: close({
		cloudwatch_logs?: matchN(1, [_#defs."/$defs/logs_config/$defs/cloudwatch_logs", list.MaxItems(1) & [..._#defs."/$defs/logs_config/$defs/cloudwatch_logs"]])
		s3_logs?: matchN(1, [_#defs."/$defs/logs_config/$defs/s3_logs", list.MaxItems(1) & [..._#defs."/$defs/logs_config/$defs/s3_logs"]])
	})

	#secondary_artifacts: close({
		artifact_identifier!:    string
		bucket_owner_access?:    string
		encryption_disabled?:    bool
		location?:               string
		name?:                   string
		namespace_type?:         string
		override_artifact_name?: bool
		packaging?:              string
		path?:                   string
		type!:                   string
	})

	#secondary_source_version: close({
		source_identifier!: string
		source_version!:    string
	})

	#secondary_sources: close({
		buildspec?: string
		auth?: matchN(1, [_#defs."/$defs/secondary_sources/$defs/auth", list.MaxItems(1) & [..._#defs."/$defs/secondary_sources/$defs/auth"]])
		git_clone_depth?:     number
		insecure_ssl?:        bool
		location?:            string
		report_build_status?: bool
		source_identifier!:   string
		type!:                string
		build_status_config?: matchN(1, [_#defs."/$defs/secondary_sources/$defs/build_status_config", list.MaxItems(1) & [..._#defs."/$defs/secondary_sources/$defs/build_status_config"]])
		git_submodules_config?: matchN(1, [_#defs."/$defs/secondary_sources/$defs/git_submodules_config", list.MaxItems(1) & [..._#defs."/$defs/secondary_sources/$defs/git_submodules_config"]])
	})

	#source: close({
		auth?: matchN(1, [_#defs."/$defs/source/$defs/auth", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/auth"]])
		buildspec?:           string
		git_clone_depth?:     number
		insecure_ssl?:        bool
		location?:            string
		report_build_status?: bool
		type!:                string
		build_status_config?: matchN(1, [_#defs."/$defs/source/$defs/build_status_config", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/build_status_config"]])
		git_submodules_config?: matchN(1, [_#defs."/$defs/source/$defs/git_submodules_config", list.MaxItems(1) & [..._#defs."/$defs/source/$defs/git_submodules_config"]])
	})

	#vpc_config: close({
		security_group_ids!: [...string]
		subnets!: [...string]
		vpc_id!: string
	})

	_#defs: "/$defs/build_batch_config/$defs/restrictions": close({
		compute_types_allowed?: [...string]
		maximum_builds_allowed?: number
	})

	_#defs: "/$defs/environment/$defs/docker_server": close({
		compute_type!: string
		security_group_ids?: [...string]
	})

	_#defs: "/$defs/environment/$defs/environment_variable": close({
		name!:  string
		type?:  string
		value!: string
	})

	_#defs: "/$defs/environment/$defs/fleet": close({
		fleet_arn?: string
	})

	_#defs: "/$defs/environment/$defs/registry_credential": close({
		credential!:          string
		credential_provider!: string
	})

	_#defs: "/$defs/logs_config/$defs/cloudwatch_logs": close({
		group_name?:  string
		status?:      string
		stream_name?: string
	})

	_#defs: "/$defs/logs_config/$defs/s3_logs": close({
		bucket_owner_access?: string
		encryption_disabled?: bool
		location?:            string
		status?:              string
	})

	_#defs: "/$defs/secondary_sources/$defs/auth": close({
		resource!: string
		type!:     string
	})

	_#defs: "/$defs/secondary_sources/$defs/build_status_config": close({
		context?:    string
		target_url?: string
	})

	_#defs: "/$defs/secondary_sources/$defs/git_submodules_config": close({
		fetch_submodules!: bool
	})

	_#defs: "/$defs/source/$defs/auth": close({
		resource!: string
		type!:     string
	})

	_#defs: "/$defs/source/$defs/build_status_config": close({
		context?:    string
		target_url?: string
	})

	_#defs: "/$defs/source/$defs/git_submodules_config": close({
		fetch_submodules!: bool
	})
}
