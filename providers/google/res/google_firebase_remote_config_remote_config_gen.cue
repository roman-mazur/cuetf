package res

import "list"

#google_firebase_remote_config_remote_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firebase_remote_config_remote_config")
	close({
		conditions?: matchN(1, [#conditions, [...#conditions]])
		parameter_groups?: matchN(1, [#parameter_groups, [...#parameter_groups]])
		parameters?: matchN(1, [#parameters, [...#parameters]])
		timeouts?: #timeouts
		id?:       string

		// The name of the RemoteConfig.
		// Format: projects/{project}/namespaces/{namespace}/remoteConfig
		// Project is a Firebase project ID or project number.
		// Namespace is the namespace ID (e.g.: firebase or
		// firebase-server)
		name?:    string
		project?: string

		// Contains all metadata about a particular version of the Remote
		// Config
		// template.
		//
		// All fields are set at the time the specified Remote Config
		// template was
		// written.
		version?: [...close({
			is_legacy?:       bool
			rollback_source?: string
			update_origin?:   string
			update_time?:     string
			update_type?:     string
			update_user?: [...close({
				email?:     string
				image_url?: string
				name?:      string
			})]
			version_number?: string
		})]
	})

	#conditions: close({
		// The logic of this condition.
		//
		// See the documentation regarding
		// [Condition
		// Expressions](https://firebase.google.com/docs/remote-config/condition-reference)
		// for the expected syntax of this field.
		expression!: string

		// A non-empty and unique name of this condition.
		name!: string

		// The color associated with this condition for display purposes
		// in the Firebase Console.
		// Not specifying this value results in the Console picking an
		// arbitrary color to associate with the condition. Possible
		// values: ["BLUE", "BROWN", "CYAN", "DEEP_ORANGE", "GREEN",
		// "INDIGO", "LIME", "ORANGE", "PINK", "PURPLE", "TEAL"]
		tag_color?: string
	})

	#parameter_groups: close({
		parameters?: matchN(1, [_#defs."/$defs/parameter_groups/$defs/parameters", [..._#defs."/$defs/parameter_groups/$defs/parameters"]])

		// A description for the group. Its length must be less than or
		// equal to 256
		// characters. A description may contain any Unicode characters.
		description?:          string
		parameter_group_name!: string
	})

	#parameters: close({
		conditional_values?: matchN(1, [_#defs."/$defs/parameters/$defs/conditional_values", [..._#defs."/$defs/parameters/$defs/conditional_values"]])
		default_value?: matchN(1, [_#defs."/$defs/parameters/$defs/default_value", list.MaxItems(1) & [..._#defs."/$defs/parameters/$defs/default_value"]])

		// A description for this Parameter. Its length must be less than
		// or equal to
		// 256 characters . A description may contain any Unicode
		// characters.
		description?:    string
		parameter_name!: string

		// The data type for all values of this parameter in the current
		// version of
		// the template. Default value: "STRING" Possible values:
		// ["STRING", "BOOLEAN", "NUMBER", "JSON"]
		value_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/parameter_groups/$defs/parameters": close({
		conditional_values?: matchN(1, [_#defs."/$defs/parameter_groups/$defs/parameters/$defs/conditional_values", [..._#defs."/$defs/parameter_groups/$defs/parameters/$defs/conditional_values"]])
		default_value?: matchN(1, [_#defs."/$defs/parameter_groups/$defs/parameters/$defs/default_value", list.MaxItems(1) & [..._#defs."/$defs/parameter_groups/$defs/parameters/$defs/default_value"]])

		// A description for this Parameter. Its length must be less than
		// or equal to
		// 256 characters . A description may contain any Unicode
		// characters.
		description?:    string
		parameter_name!: string

		// The data type for all values of this parameter in the current
		// version of
		// the template. Default value: "STRING" Possible values:
		// ["STRING", "BOOLEAN", "NUMBER", "JSON"]
		value_type?: string
	})

	_#defs: "/$defs/parameter_groups/$defs/parameters/$defs/conditional_values": close({
		condition_name!: string

		// If true, the parameter is omitted from the parameter values
		// returned
		// to a client.
		use_in_app_default?: bool

		// The string value that the parameter is set to.
		value?: string
	})

	_#defs: "/$defs/parameter_groups/$defs/parameters/$defs/default_value": close({
		// If true, the parameter is omitted from the parameter values
		// returned
		// to a client.
		use_in_app_default?: bool

		// The string value that the parameter is set to.
		value?: string
	})

	_#defs: "/$defs/parameters/$defs/conditional_values": close({
		condition_name!: string

		// If true, the parameter is omitted from the parameter values
		// returned
		// to a client.
		use_in_app_default?: bool

		// The string value that the parameter is set to.
		value?: string
	})

	_#defs: "/$defs/parameters/$defs/default_value": close({
		// If true, the parameter is omitted from the parameter values
		// returned
		// to a client.
		use_in_app_default?: bool

		// The string value that the parameter is set to.
		value?: string
	})
}
