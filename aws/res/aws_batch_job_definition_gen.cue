package res

import "list"

#aws_batch_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_batch_job_definition")
	close({
		arn?:                        string
		arn_prefix?:                 string
		container_properties?:       string
		deregister_on_new_revision?: bool
		ecs_properties?:             string
		id?:                         string
		name!:                       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:          string
		node_properties?: string
		parameters?: [string]: string
		platform_capabilities?: [...string]
		eks_properties?: matchN(1, [#eks_properties, list.MaxItems(1) & [...#eks_properties]])
		propagate_tags?:      bool
		revision?:            number
		scheduling_priority?: number
		tags?: [string]:     string
		tags_all?: [string]: string
		type!: string
		retry_strategy?: matchN(1, [#retry_strategy, list.MaxItems(1) & [...#retry_strategy]])
		timeout?: matchN(1, [#timeout, list.MaxItems(1) & [...#timeout]])
	})

	#eks_properties: close({
		pod_properties!: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/eks_properties/$defs/pod_properties"]])
	})

	#retry_strategy: close({
		evaluate_on_exit?: matchN(1, [_#defs."/$defs/retry_strategy/$defs/evaluate_on_exit", list.MaxItems(5) & [..._#defs."/$defs/retry_strategy/$defs/evaluate_on_exit"]])
		attempts?: number
	})

	#timeout: close({
		attempt_duration_seconds?: number
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties": close({
		dns_policy?: string
		containers!: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers", list.MaxItems(10) & [_, ...] & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers"]])
		host_network?:            bool
		service_account_name?:    string
		share_process_namespace?: bool
		image_pull_secret?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/image_pull_secret", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/image_pull_secret"]])
		init_containers?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers", list.MaxItems(10) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers"]])
		metadata?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/metadata", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/metadata"]])
		volumes?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes"]])
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/containers": close({
		args?: [...string]
		command?: [...string]
		image!:             string
		image_pull_policy?: string
		name?:              string
		env?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/env", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/env"]])
		resources?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/resources", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/resources"]])
		security_context?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/security_context", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/security_context"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/volume_mounts", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/volume_mounts"]])
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/env": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/resources": close({
		limits?: [string]:   string
		requests?: [string]: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/security_context": close({
		privileged?:                 bool
		read_only_root_file_system?: bool
		run_as_group?:               number
		run_as_non_root?:            bool
		run_as_user?:                number
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/containers/$defs/volume_mounts": close({
		mount_path!: string
		name!:       string
		read_only?:  bool
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/image_pull_secret": close({
		name!: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/init_containers": close({
		args?: [...string]
		command?: [...string]
		image!:             string
		image_pull_policy?: string
		name?:              string
		env?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/env", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/env"]])
		resources?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/resources", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/resources"]])
		security_context?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/security_context", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/security_context"]])
		volume_mounts?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/volume_mounts", [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/volume_mounts"]])
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/env": close({
		name!:  string
		value!: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/resources": close({
		limits?: [string]:   string
		requests?: [string]: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/security_context": close({
		privileged?:                 bool
		read_only_root_file_system?: bool
		run_as_group?:               number
		run_as_non_root?:            bool
		run_as_user?:                number
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/init_containers/$defs/volume_mounts": close({
		mount_path!: string
		name!:       string
		read_only?:  bool
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/metadata": close({
		labels?: [string]: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/volumes": close({
		empty_dir?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/empty_dir", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/empty_dir"]])
		host_path?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/host_path", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/host_path"]])
		secret?: matchN(1, [_#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/secret", list.MaxItems(1) & [..._#defs."/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/secret"]])
		name?: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/empty_dir": close({
		medium?:     string
		size_limit!: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/host_path": close({
		path!: string
	})

	_#defs: "/$defs/eks_properties/$defs/pod_properties/$defs/volumes/$defs/secret": close({
		optional?:    bool
		secret_name!: string
	})

	_#defs: "/$defs/retry_strategy/$defs/evaluate_on_exit": close({
		action!:           string
		on_exit_code?:     string
		on_reason?:        string
		on_status_reason?: string
	})
}
