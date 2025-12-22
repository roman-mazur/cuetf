package res

import "list"

#google_cloud_security_compliance_framework: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_security_compliance_framework")
	close({
		// The category of the framework.
		category?: [...string]

		// The description of the framework. The maximum length is 2000
		// characters.
		description?: string

		// Display name of the framework. The maximum length is 200
		// characters.
		display_name?: string

		// ID of the framework.
		// This is not the full name of the framework.
		// This is the last part of the full name of the framework.
		framework_id!: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		id?:       string

		// Major revision of the framework incremented in ascending order.
		major_revision_id?: string

		// Identifier. The name of the framework.
		// Format:
		// organizations/{organization}/locations/{{location}}/frameworks/{framework_id}
		name?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		organization!: string
		cloud_control_details?: matchN(1, [#cloud_control_details, [...#cloud_control_details]])

		// cloud providers supported
		supported_cloud_providers?: [...string]

		// The supported enforcement modes of the framework.
		supported_enforcement_modes?: [...string]
		timeouts?: #timeouts

		// target resource types supported by the Framework.
		supported_target_resource_types?: [...string]

		// The type of the framework. The default is TYPE_CUSTOM.
		// Possible values:
		// BUILT_IN
		// CUSTOM
		type?: string
	})

	#cloud_control_details: close({
		parameters?: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters", [..._#defs."/$defs/cloud_control_details/$defs/parameters"]])

		// Major revision of cloudcontrol
		major_revision_id!: string

		// The name of the CloudControl in the format:
		// “organizations/{organization}/locations/{location}/cloudControls/{cloud-control}”
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters": close({
		parameter_value!: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value"]])

		// The name of the parameter.
		name!: string
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value": close({
		// Represents a boolean value.
		bool_value?: bool

		// Represents a double value.
		number_value?: number
		oneof_value?: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value", list.MaxItems(1) & [..._#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value"]])

		// Represents a string value.
		string_value?: string
		string_list_value?: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value", list.MaxItems(1) & [..._#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value"]])
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value": close({
		parameter_value?: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value", list.MaxItems(1) & [..._#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value"]])

		// The name of the parameter.
		name?: string
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value": close({
		// Represents a boolean value.
		bool_value?: bool
		string_list_value?: matchN(1, [_#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value/$defs/string_list_value", list.MaxItems(1) & [..._#defs."/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value/$defs/string_list_value"]])

		// Represents a double value.
		number_value?: number

		// Represents a string value.
		string_value?: string
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/oneof_value/$defs/parameter_value/$defs/string_list_value": close({
		// The strings in the list.
		values!: [...string]
	})

	_#defs: "/$defs/cloud_control_details/$defs/parameters/$defs/parameter_value/$defs/string_list_value": close({
		// The strings in the list.
		values!: [...string]
	})
}
