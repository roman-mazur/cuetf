package res

import "list"

#aws_emrserverless_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emrserverless_application")
	close({
		architecture?: string
		arn?:          string
		id?:           string
		name!:         string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:        string
		release_label!: string
		tags?: [string]: string
		auto_start_configuration?: matchN(1, [#auto_start_configuration, list.MaxItems(1) & [...#auto_start_configuration]])
		tags_all?: [string]: string
		auto_stop_configuration?: matchN(1, [#auto_stop_configuration, list.MaxItems(1) & [...#auto_stop_configuration]])
		image_configuration?: matchN(1, [#image_configuration, list.MaxItems(1) & [...#image_configuration]])
		initial_capacity?: matchN(1, [#initial_capacity, [...#initial_capacity]])
		interactive_configuration?: matchN(1, [#interactive_configuration, list.MaxItems(1) & [...#interactive_configuration]])
		maximum_capacity?: matchN(1, [#maximum_capacity, list.MaxItems(1) & [...#maximum_capacity]])
		type!: string
		network_configuration?: matchN(1, [#network_configuration, list.MaxItems(1) & [...#network_configuration]])
	})

	#auto_start_configuration: close({
		enabled?: bool
	})

	#auto_stop_configuration: close({
		enabled?:              bool
		idle_timeout_minutes?: number
	})

	#image_configuration: close({
		image_uri!: string
	})

	#initial_capacity: close({
		initial_capacity_config?: matchN(1, [_#defs."/$defs/initial_capacity/$defs/initial_capacity_config", list.MaxItems(1) & [..._#defs."/$defs/initial_capacity/$defs/initial_capacity_config"]])
		initial_capacity_type!: string
	})

	#interactive_configuration: close({
		livy_endpoint_enabled?: bool
		studio_enabled?:        bool
	})

	#maximum_capacity: close({
		cpu!:    string
		disk?:   string
		memory!: string
	})

	#network_configuration: close({
		security_group_ids?: [...string]
		subnet_ids?: [...string]
	})

	_#defs: "/$defs/initial_capacity/$defs/initial_capacity_config": close({
		worker_configuration?: matchN(1, [_#defs."/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration", list.MaxItems(1) & [..._#defs."/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration"]])
		worker_count!: number
	})

	_#defs: "/$defs/initial_capacity/$defs/initial_capacity_config/$defs/worker_configuration": close({
		cpu!:    string
		disk?:   string
		memory!: string
	})
}
