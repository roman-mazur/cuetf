package res

import "list"

google_dialogflow_companion_agent: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dialogflow_companion_agent")
	close({
		ces_tool_specs?: matchN(1, [#ces_tool_specs, [...#ces_tool_specs]])
		skill_configs?: matchN(1, [#skill_configs, [...#skill_configs]])
		timeouts?: #timeouts
		toolset_tools?: matchN(1, [#toolset_tools, [...#toolset_tools]])

		// The ID to use for the companion agent, which will become the final component
		// of the companion agent's resource name.
		companion_agent_id!: string

		// Creation time of this companion agent.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description for the companion agent.
		description?: string

		// Display name for the companion agent.
		display_name?: string
		id?:           string

		// The location of the companion agent.
		location!: string

		// The unique identifier of the companion agent.
		// Format: 'projects/{project}/locations/{location}/companionAgents/{companion_agent}'.
		name?: string

		// Update time of this companion agent.
		update_time?: string
		project?:     string
	})

	#ces_tool_specs: close({
		parameter_overrides?: matchN(1, [_#defs."/$defs/ces_tool_specs/$defs/parameter_overrides", [..._#defs."/$defs/ces_tool_specs/$defs/parameter_overrides"]])

		// The resource name of the CES tool.
		// Format: 'projects/{project}/locations/{location}/apps/{app}/tools/{tool}'.
		ces_tool?: string

		// Indicates whether the tool requires human confirmation. Possible values:
		// ["REQUIRED", "NOT_REQUIRED"]
		confirmation_requirement?: string

		// Indicates whether the tool is enabled in proactive mode.
		// All tools are enabled in proactive mode by default. To disable a tool in
		// proactive mode, set this field to 'false'.
		// NOTE: At least one of 'proactive_enabled' or 'reactive_enabled' should be
		// 'true' else the tool will be ignored.
		proactive_enabled?: bool

		// Indicates whether the tool is enabled in reactive mode.
		// All tools are disabled in reactive mode by default. To enable a tool in
		// reactive mode, set this field to 'true'.
		// NOTE: At least one of 'reactive_enabled' or 'proactive_enabled' should be
		// 'true' else the tool will be ignored. CompanionAgent config will throw an
		// error if any unsupported tool is enabled in reactive mode.
		reactive_enabled?: bool
	})

	#skill_configs: close({
		guidance_skill_config?: matchN(1, [_#defs."/$defs/skill_configs/$defs/guidance_skill_config", list.MaxItems(1) & [..._#defs."/$defs/skill_configs/$defs/guidance_skill_config"]])

		// The event that should trigger the skill. Possible values:
		// ["END_OF_UTTERANCE", "CUSTOMER_MESSAGE", "AGENT_MESSAGE"]
		skill_triggering_event?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#toolset_tools: close({
		parameter_overrides?: matchN(1, [_#defs."/$defs/toolset_tools/$defs/parameter_overrides", [..._#defs."/$defs/toolset_tools/$defs/parameter_overrides"]])

		// Indicates whether the tool requires human confirmation. Possible values:
		// ["REQUIRED", "NOT_REQUIRED"]
		confirmation_requirement?: string

		// The 'operationId' field of the OpenAPI endpoint. The 'operationId' must be
		// present in the toolset's definition.
		operation_id?: string

		// Indicates whether the toolset tool is enabled in proactive mode.
		// NOTE: At least one of 'proactive_enabled' or 'reactive_enabled' should be
		// 'true' else the toolset tool will be ignored.
		proactive_enabled?: bool

		// Indicates whether the toolset tool is enabled in reactive mode.
		// NOTE: At least one of 'reactive_enabled' or 'proactive_enabled' should be
		// 'true' else the toolset tool will be ignored.
		reactive_enabled?: bool

		// The name of the toolset to retrieve the schema for.
		// Format: 'projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}'.
		toolset!: string
	})

	_#defs: "/$defs/ces_tool_specs/$defs/parameter_overrides": close({
		// The key of the context reference in ingested context references.
		context_reference_key!: string

		// The path into the JSON object of the latest content ingested under
		// 'context_reference_key' (e.g. 'email' or 'user.email'). If omitted, the
		// entire content under 'context_reference_key' is used.
		// If the path cannot be resolved when the tool is called, the value predicted
		// by the model is used (or omitted if the model did not predict it).
		field_path?: string

		// The name of the tool input parameter to override, as defined in the tool's
		// input schema. For example, 'user_email'.
		parameter_name!: string
	})

	_#defs: "/$defs/skill_configs/$defs/guidance_skill_config": close({
		guidance_instructions?: matchN(1, [_#defs."/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions", [..._#defs."/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions"]])

		// This is specific additional guidance that can be configured by the user.
		overarching_guidance?: string
	})

	_#defs: "/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions": close({
		actions?: matchN(1, [_#defs."/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions/$defs/actions", [..._#defs."/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions/$defs/actions"]])

		// The condition of the instruction.
		condition?: string

		// Whether to disable suggested reply generation for this instruction.
		disable_suggested_reply?: bool

		// The detailed description of this instruction.
		display_details?: string

		// Display name for the instruction.
		display_name?: string

		// Event that triggers the guidance instruction. Possible values:
		// ["END_OF_UTTERANCE", "CUSTOMER_MESSAGE", "AGENT_MESSAGE"]
		trigger_event?: string
	})

	_#defs: "/$defs/skill_configs/$defs/guidance_skill_config/$defs/guidance_instructions/$defs/actions": close({
		// Description of action item.
		description!: string
	})

	_#defs: "/$defs/toolset_tools/$defs/parameter_overrides": close({
		// The key of the context reference in ingested context references.
		context_reference_key!: string

		// The path into the JSON object of the latest content ingested under
		// 'context_reference_key' (e.g. 'email' or 'user.email'). If omitted, the
		// entire content under 'context_reference_key' is used.
		// If the path cannot be resolved when the tool is called, the value predicted
		// by the model is used (or omitted if the model did not predict it).
		field_path?: string

		// The name of the tool input parameter to override, as defined in the tool's
		// input schema. For example, 'user_email'.
		parameter_name!: string
	})
}
