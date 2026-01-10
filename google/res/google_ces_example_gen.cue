package res

import "list"

#google_ces_example: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_ces_example")
	close({
		// Resource ID segment making up resource 'name', defining the app
		// the example belongs to. It identifies the resource within its
		// parent collection as described in https://google.aip.dev/122.
		app!: string

		// Timestamp when the example was created.
		create_time?: string

		// Human-readable description of the example.
		description?: string

		// Display name of the example.
		display_name!: string

		// The agent that initially handles the conversation. If not
		// specified, the
		// example represents a conversation that is handled by the root
		// agent.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/agents/{agent}'
		entry_agent?: string

		// Etag used to ensure the object hasn't changed during a
		// read-modify-write
		// operation. If the etag is empty, the update will overwrite any
		// concurrent
		// changes.
		etag?: string

		// The ID to use for the example, which will become the final
		// component of
		// the example's resource name. In Terraform, this field is
		// required.
		example_id!: string
		id?:         string

		// The example may become invalid if referencing resources are
		// deleted.
		// Invalid examples will not be used as few-shot examples.
		invalid?: bool

		// Resource ID segment making up resource 'name', defining what
		// region the parent app is in. It identifies the resource within
		// its parent collection as described in
		// https://google.aip.dev/122.
		location!: string
		messages?: matchN(1, [#messages, [...#messages]])
		timeouts?: #timeouts

		// Identifier. The unique identifier of the example.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/examples/{example}'
		name?:    string
		project?: string

		// Timestamp when the example was last updated.
		update_time?: string
	})

	#messages: close({
		chunks?: matchN(1, [_#defs."/$defs/messages/$defs/chunks", [..._#defs."/$defs/messages/$defs/chunks"]])

		// The role within the conversation, e.g., user, agent.
		role?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/messages/$defs/chunks": close({
		// Text data.
		text?: string
		agent_transfer?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/agent_transfer", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/agent_transfer"]])
		image?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/image", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/image"]])
		tool_call?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/tool_call", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/tool_call"]])
		tool_response?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/tool_response", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/tool_response"]])

		// A struct represents variables that were updated in the
		// conversation,
		// keyed by variable names.
		updated_variables?: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/agent_transfer": close({
		// Display name of the agent.
		display_name?: string

		// The agent to which the conversation is being transferred. The
		// agent will
		// handle the conversation from this point forward.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/agents/{agent}'
		target_agent!: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/image": close({
		// Raw bytes of the image.
		data!: string

		// The IANA standard MIME type of the source data.
		// Supported image types includes:
		// * image/png
		// * image/jpeg
		// * image/webp
		mime_type!: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/tool_call": close({
		// The input parameters and values for the tool in JSON object
		// format.
		args?: string

		// Display name of the tool.
		display_name?: string

		// The unique identifier of the tool call. If populated, the
		// client should
		// return the execution result with the matching ID in
		// ToolResponse.
		id?: string
		toolset_tool?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/tool_call/$defs/toolset_tool", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/tool_call/$defs/toolset_tool"]])

		// The name of the tool to execute.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/tools/{tool}'
		tool?: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/tool_call/$defs/toolset_tool": close({
		// The tool ID to filter the tools to retrieve the schema for.
		tool_id?: string

		// The resource name of the Toolset from which this tool is
		// derived.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}'
		toolset!: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/tool_response": close({
		// Display name of the tool.
		display_name?: string

		// The matching ID of the tool call the response is for.
		id?: string

		// The tool execution result in JSON object format.
		// Use "output" key to specify tool response and "error" key to
		// specify
		// error details (if any). If "output" and "error" keys are not
		// specified,
		// then whole "response" is treated as tool execution result.
		response!: string
		toolset_tool?: matchN(1, [_#defs."/$defs/messages/$defs/chunks/$defs/tool_response/$defs/toolset_tool", list.MaxItems(1) & [..._#defs."/$defs/messages/$defs/chunks/$defs/tool_response/$defs/toolset_tool"]])

		// The name of the tool to execute.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/tools/{tool}'
		tool?: string
	})

	_#defs: "/$defs/messages/$defs/chunks/$defs/tool_response/$defs/toolset_tool": close({
		// The tool ID to filter the tools to retrieve the schema for.
		tool_id?: string

		// The resource name of the Toolset from which this tool is
		// derived.
		// Format:
		// 'projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}'
		toolset!: string
	})
}
